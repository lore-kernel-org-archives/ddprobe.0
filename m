Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3263F10E3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752726594; cv=none; b=B/ruP+PFcbdXIZp06DpprfDKmP4qL/kWr9JvK2INa2PCSERY/5yalfbVJBqjIbYN+Q2Xe7pGWH1UEtQaL7D26PIZcWkTB6Y7ayIwBuIP3xOGcPHyZOVpwZ+3OORuiqPpawjntaC2FOkOkIbWKL7TGqxxiH6bJ9uUjnn+AjlALsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752726594; c=relaxed/simple;
	bh=T3cFQvuID2nW+M9TI9DJWGUUAKia52FtSdT8/jixI1o=;
	h=To:Subject:From:Message-Id:Date; b=gYTLLNt//i7wUm/A20iS+nwgbiLWY/DMdsICRr0s4k03gInqRP4nPvyZa1tCtuAMavgFK+bxxNFLoHsH6+oep5Pg3o5QMc2MwXnfF0jNSwOJevIvYwCSaWCbfl/QglGseSEzIKvMi77bnFMU86GqK3a43Aom+knZXh84r5GMzJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlWWpZ7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlWWpZ7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74D4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752726593;
	bh=T3cFQvuID2nW+M9TI9DJWGUUAKia52FtSdT8/jixI1o=;
	h=To:Subject:From:Date:From;
	b=YlWWpZ7kQtNJavPliE3VVfVgyBcJk5ERHm8nKIZI/WFh7r+xXP1AfxxqfhYHfn2Q5
	 gdcAt0/W6KMyAPYRaSFNd5aItOCC8WRzEbxZm3RmGJqtp/vITBdtm1EuW2DuUHpfv2
	 3wzHFsxFsP4ngTIDLWOcYDQGPqBXS4RZaGrr1l15DYWJTkCBBc8s9dd8bJe/CA7KiW
	 yA5SQMW5FYlZD8mCuJdnF5Cv+Qsr3mn/faZ65laXvjZQ4OxH3s5i28s1aEMiouo36L
	 G4Wj8ro1iUvZvtU0SuNqrWgeXE5M1LO92ca2Eu+MW25YL19/s4Y9PRYSGNHnSC3X7M
	 X5NP7p+v5jWjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AB2C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272659359.19121.7099864403824528208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64b19571ea10232f27c968ed67394f8667ba7748d937cd4d7965948c1914590
Date: Thu, 17 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752726593
