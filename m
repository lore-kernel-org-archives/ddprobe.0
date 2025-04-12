Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428C51EA7F8
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744474794; cv=none; b=i/JN7XIw+dif6mV4z056OXuQrAh+kTTVe4czcmh4fzFF5/4ucZDDRKViWpQQyESssjyA++ffrr3bat5C+jMiGYjOkV0Qz/Y40bvdxxISm3zVFfmcxhSvKtvImgjRoHKTiVyrmgvxmUWpWl7A1P84DETyPOlqZKZXxhWt/Zp1Lsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744474794; c=relaxed/simple;
	bh=h2LpDzu+UjoJVFDVkzRhD66RF9cqYo/GarPkPHHC+pk=;
	h=To:Subject:From:Message-Id:Date; b=iQ4xfQ9Ll7E1yVesTCXLdfOTX7JQCGvBONwosNrwthIwtyKa+F8YBcDrxnN5//XZKUtOz/xq7yG9ozj+FGOtMK+xM2FqzvDYMCLEZ+HCWhecZz/aq1eST3lrHE4z4JC1UX0/rqTn9YzpPecF4xfs1UATSPKH5NPW/sWiiId1YeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B30EguWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B30EguWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE6EC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744474793;
	bh=h2LpDzu+UjoJVFDVkzRhD66RF9cqYo/GarPkPHHC+pk=;
	h=To:Subject:From:Date:From;
	b=B30EguWbhnTxpV/nmAg/Z/EESCe5y3zOa+8zkqzHffYDHD8jxSMt4Lpe0GBkOiCWH
	 yx0juMX0ClsdD+3fv4e0piSkueEU6Xo4GSkFNEXb0NaKqpjcCCGJmyw4bpKlQSNUvW
	 a6gd97U87ngQv6lv/hHVI+gJJhL6XA5ZO//9HRe+rjai88CSScHCB31SscFBJiwPwa
	 MTuQHN/XJVh7Nnc+Lu4ZbHQ5YUqHok1IFWArVPBxH0jhYy4C9gYRQnlxtT711AdN+y
	 w+SVNXwPyV9GV21o4evqwGBjsB32COP8vm/ESHJq1OIbJ9cyi0v+1KO6zI0trgA7C/
	 oiZhV5h6verBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D96C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447479363.9368.12076707154961017711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a928baee12e69f479cf9257e589fa2efa981b2b874b0c515e4f1912804086dfe
Date: Sat, 12 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744474793
