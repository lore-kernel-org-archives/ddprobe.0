Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DC330C17B
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784096914; cv=none; b=o6IavsbKfOP5IlIpu3VBuGxKCPRcwgexsZFB2OXFtIZR9t8bMjdiOS5hFjwI+xXuBz1yBBHNgCTp0y2Gf24PVg4pOmV5AvL1wdx5Q/BaSVd+oTewCAu53iwvgYcNUY/2bCPGhok5/w8+/48ZoQbcFQCvNTdJIBdQjnQynFXHuyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784096914; c=relaxed/simple;
	bh=IQqF/naZ5v2y7H+mzabWp+S5m0J7VvvPK3KGfQRMw7M=;
	h=To:Subject:From:Message-Id:Date; b=T8ujsnlckCxGEWjOS4mSrLPP6/hv1Vrf3kSJSb/aSPwu+SOWfQwPc1NCx5sjSOjAD4eSAhJn3UmGrFPcXJ16i5tpQByiyi5dwUnNkspIWgJSuLKYPrjvfs5QdOpIvZR/FanLpPc68iKMCarB4BR51aAxBUaWqjk75kPTGe7yOzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dR3iQEnG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dR3iQEnG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08B7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784096913;
	bh=IQqF/naZ5v2y7H+mzabWp+S5m0J7VvvPK3KGfQRMw7M=;
	h=To:Subject:From:Date:From;
	b=dR3iQEnGP3SW+xk2M2BiOTcCx/PEdPXYS4iTcIGBJvVpNl3cgdbZxzwGaoRXAKDW8
	 caezyM+HlXblR9T33UtftGY4HbBUnYYVCYqmnWqgOK2zEasl4CiSdsZm+zzN+5PkmD
	 oJyJKaZCAQC4DKWS/v7nO+Cfkbjli8fYJi9bVna+GQmGxRKiFTHCwGPD+3RMfKdtLx
	 kjFXuQk0t/mni0B7Tq0joaY6PhaUVkxCA7ziPZvd+8FCIFa52zdLaCKET2NtfYW84Z
	 jjVe2+93B9Z1CeA6K1swM93alByaJXZ9xDdOfoNRGSI8fZJivKFnW5D32/fc0cLpnd
	 qJidfCB8RdU7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E1EC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409691368.19047.15281040319169974207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdcbb63693784a3dc0780fcf8f8d97b2221abd835185e142e4abf4726447f84f
Date: Wed, 15 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784096913
