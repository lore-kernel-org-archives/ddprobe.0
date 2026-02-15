Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206262C0F75
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771148694; cv=none; b=SBEYv6ArZKiidGDNtbGV3d+QS2Dx5iB6shpEL9XBZP6em7D5PREYBPoLONuhX/IG70gXtQovNZ7ztSjbYtYliof2Gn4zLnu+4oI013mFCmLNJBrQuGvzJahbI3JxKlBXbGpBAbwd6+JIdrYvBca6dDwJPAFeZQVGy2bBDjMzAHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771148694; c=relaxed/simple;
	bh=o5HM6syenxL7dGy/YYiPbD9xih/LawD7ja3X2HnDnj0=;
	h=To:Subject:From:Message-Id:Date; b=bD5NVDdpwWzgq6eW7H04S3r5BRc32ZL2ouL+sfdjQ99VDww3nfdhyLR0eUw4KGg5e3OPqf0qQHemhpgO1MBLVPHgpuQGdNi8vzFfI08Zxgr4eZvIWTQmr5v6QcSdsTjXVy5flWcKdv+/iTsj2EAPByUOztAT7d8yuG+pbMxXWWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mj0rKGBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mj0rKGBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0DCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771148693;
	bh=o5HM6syenxL7dGy/YYiPbD9xih/LawD7ja3X2HnDnj0=;
	h=To:Subject:From:Date:From;
	b=Mj0rKGBvtKDkYPJ//Hi1A+6wAGo3DVTF4uzMnzi+yMsMR7Svh8ADyxHltcVPAOvVR
	 AXmlz0Ak4HduBKkuIAvWrSngLAQMvXed5t2Uc2w2xmGd04mce0bAd2yIryJhP7UfYu
	 4Mo7HoonqGiWaHrzrnojqzCRNubbWgiOolcY5u/h7Akw5qiceRx16C6do92MHRiEez
	 9MrC+DFRhIK4wVVryg9FZ3D5k3ueQ0ULiIsFd6OoyyVHQRSxfBOphnPYlGKoGa6ZbN
	 nHZ87jkzy1AnCR+zTgdOt3pM1PcPDUKuKvrZKsko85ZIkLNMew+Wde2swu5sNNp5SN
	 R0Osgb5EFc3fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5B1EF586F
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114869360.658.2107765790972745022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0944c45837360ccae94bff17e3b6bec5901013ce12d1451acd412165142f1ac0
Date: Sun, 15 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771148693
