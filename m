Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B75221DB5
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748800194; cv=none; b=OKfYi6DH5PkoFDRDc4Fsajo0z8EqikWBMAfHCZUQuXOT9+ktJoqsr+gH8I1qRDKRdl0m9oaycS6CXOfJkGxwUEpNxnhYmmEu2XY1CfnU+4FAhTqKFNNDpA8NBssxG6eWbxcTxNGvWzJ5v4K5nIv9fnwWm5aK6Wh/saX7DwaKWnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748800194; c=relaxed/simple;
	bh=11PylRyqRIiofTYC6lnLWG9BKCQQrkHGCoe/reLdKww=;
	h=To:Subject:From:Message-Id:Date; b=hBz1NnJnkGl1yDr+YlnKa/N5jP3/5dR/MkPhWzrHSgC8xCwt2IDMF8A+Zwug/stKqsMnOVX/zNbsZZWFPiGGlrUECFhoVRZGP67ZfGJwrJ8quuHoRzl9I6nlelypZCuTp33JMP4wLLmF86SfmkogbUmn3diDcXwJMl5//qsV40k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1adJvPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1adJvPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBE2C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748800193;
	bh=11PylRyqRIiofTYC6lnLWG9BKCQQrkHGCoe/reLdKww=;
	h=To:Subject:From:Date:From;
	b=C1adJvPIPeZ8IRLnqqSFwgwzgJLPS5YMCX/JX+mFjn+gHAzp/gT+JcUtKQQJcrce+
	 qm1Tw6UbYYbIp1mretYl+ExLUY0w6asxbHnGaNhxuItjUw3tLpFtMKuwsg1KH3BDny
	 dD0m96OL58U+QtjMNS1aAHOKw2peoDkc7QmacKEDIxnrjmcZt1cwBTpRO3zK18NGJ4
	 XkeonZHcmprXAMMv/spf1xiX2Fe7r6+IfBb7cMYLfXf6iShsTCacQgjQMKr6a6/5Ep
	 Xsh6VYIzA1Qf3C1Jvr6gUirXbyxQEq3y79Vrt/KErqEfgmwoZADGcnBF15TFKZBP/g
	 H6XnlSol4CyoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C8C5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880019358.16131.1355295494281070570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136797d5a082860b07475dc60381faef055b416af3293dd20227bacef8c148fe
Date: Sun, 01 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748800193
