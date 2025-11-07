Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F22302143
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762555794; cv=none; b=qnLWQTrjdHt6fVLc9WyxrhA15CHQdr8Pf5+sQseeLuKg0Ge8o/7gR3NnGNawPp1TRT8BhPHbzZKhY+NgyRGDPHbwaNMcd/amQRZIDfdjTQ63Q4ZGcLjWqklLIeMf+aotP6CUlH97Uae7Ze/rHfKU6uCvz3vpcwj0d/WNFugsvHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762555794; c=relaxed/simple;
	bh=ngnfW2sjwaCDanXFMT9Iq1BhEH3LyVc+i+tjNKP7NJo=;
	h=To:Subject:From:Message-Id:Date; b=ADXQAZA3mcWnK+f4F1aPW8bmAPILbqICHgi+x6GITH74xfAu5zs8rrV8NQd8/vrsd6MvBk5O6kqwYKSosOHlFwOa8KlBuGkQ4LZzcUOvDZQgaHd7cZkufPumgKsMLByOVpQwWqIe6VjtRFVRfzlY/YAFdEnQSOY2zxtv1mMIIJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOMlO8eF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOMlO8eF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E45C113D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762555793;
	bh=ngnfW2sjwaCDanXFMT9Iq1BhEH3LyVc+i+tjNKP7NJo=;
	h=To:Subject:From:Date:From;
	b=qOMlO8eF3vL8mIz/sYTs8WjZC5FDgkUX5BifCxxA1Y4VSuXf4fKMu75sx4jvA4Orl
	 xT5hLjZ3KwigMRVVbtxITOgG6ix8iiW2+emPCJzrrvQOSAlPkUVHYf+fKsay2eEGNc
	 Dc+ihiU+ZDhFPylk0PXVlH3D/3g6L3xxlMegUhDpcjQK5Jx1D7/5zfiF1/s86/CXQj
	 sHVE8i2FBOwCukAvX5cYm+5pkGn15Ld1f7gR3zToMEqrryQgOQPw4H+he2CqRYvao+
	 n4qPWXp6NHLqRXZnRBITYJzusidup6PrEKuPRtin2ZSxUlIC06rfseW42Cwy91yaCU
	 tkqpZsvLFMEsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CDACCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255579358.31596.5739911506948547075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10247e71a367158c08ea64f0b1b8fc74199c0adfe47498a12c934bdd66dd61e
Date: Fri, 07 Nov 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762555793
