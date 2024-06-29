Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDCE1879
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719668063; cv=none; b=Y8A8XnyoELvgO1gpLeJTYbeH2+t5b1N8Fdqk0QXZDkMfSCHCVsD+19kcbef9b0eCWwTYdBNdihqvCTCZSDwc7nCEJbdp+2Q+O81V0trXZTBP2rn2hDn9HT3X355VgUb5D6Jibsxc+kiOdGMcpzVQGNDwlJ0I9+/nINF8wJEDCzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719668063; c=relaxed/simple;
	bh=ViznmOdrz5CCfcEkLvPscZn+ZaXl4WKiSEYYVQOYJBE=;
	h=To:Subject:From:Message-Id:Date; b=M3Lh8uSSXRTak5qhJ5VPZlkVvobCNoQZ4NqsTdbawFODVrWPywYYkjAdtDdtW2Ofi4G3/pJv/a4b8oEx9dJX5fjOhGV0Exv5EdbnCcQ9FyYrl+b65xiOTgsvJjj+Q+soupeEd1pXBYSaf2GVcv3Fcqhin442IOno85zUisJk/FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0RbZf81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0RbZf81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3355C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719668062;
	bh=ViznmOdrz5CCfcEkLvPscZn+ZaXl4WKiSEYYVQOYJBE=;
	h=To:Subject:From:Date:From;
	b=W0RbZf81aEGm9ngVZbo3P8iqt+HPFkP07VxbMoBWSDknHJI6c/C13S43DFoZNykex
	 RW2VWqx4EoCxm4IoRq0BvGwCNlI0+qohPwCTqwrulj2B/MDuD4fqbYyN514gJ8Qpvs
	 amPZAcsNqgdHxCFSJ4RWCS7tnxe8Q4S/Itk78HpCzmMtlTHIYE0hsJGjtL+58syjvL
	 8yGp/g3mf0/Vd+0UeE+OyI9NMyVhEP4RBuHuaxh7TkfmdQkCv3B0L0Eztr0zY55zB+
	 TjHBzfhzNKcWH+xU07fbzwH6UFri0bZPYp9ZE4t9N24OYHR7N/8PFEerju4AHFdP+R
	 4TcL5AaNM5pNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BE2C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966806275.11486.7597963722525131264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f29fa94ad8cda68a9cfc48cb5f6c788420e1fc6e10d451da80263d7a9131827
Date: Sat, 29 Jun 2024 13:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719668062
