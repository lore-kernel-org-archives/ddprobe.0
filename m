Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCDB1A9B4A
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749461994; cv=none; b=NCQybnEZsyCuv8U40fcDjLYzZAR/RAXC1pL4obrLYXPEjmFeyRGg6LILXAsRpdAi2YZFvEB1AoeCBNls9p+2ysIEAfAcMTAKcAwy3Dozfe6ylRBaR5runqEVekr7HoarFcHGa66Mk/8liKdzMUFLi+Qq2jB62l5moeBuNvuL0jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749461994; c=relaxed/simple;
	bh=u06SXk5vaGhW+KH2Az/eVgkuw+wpGdg9lAA1BWPiRh8=;
	h=To:Subject:From:Message-Id:Date; b=qeh5G8XATjx2cWyXEGIR7nT5cW6CScj+a9d8jipNofIjEYST80Oz+PNO80jQCuvo4fN5NyBz0yzU9ejUouOD06BPO/fxBkaoz99JgWHcjCVDEbBbYsKVjBIEUe+nCob1PeeGw4eooiiPNLgl3pHG0jAlpIAWfrUe/KxXdv0T1+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7jQY2wY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7jQY2wY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB06EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749461993;
	bh=u06SXk5vaGhW+KH2Az/eVgkuw+wpGdg9lAA1BWPiRh8=;
	h=To:Subject:From:Date:From;
	b=m7jQY2wY9Bxfj0i4pcfElPMDzb//D0ZsmNbV2V0PF+UYNaSNJJBqdrfh4fXLH2jwo
	 ZVeliHOcxQBSeNRWFkryv600u9JWYI3XFUjdmKXOg0bK1Sjs5K/6ok8A/M8QpcNZqy
	 i5NP4H9boX0huHwWWgDpRceNzt3D39Tc/9CYVGEI5muDrhv+RLoFJPHjJTGnLrmzGU
	 bg/YG7uNMQHAxLBeipYuVjHcaQJw7DZOvSFrtz8+oNtcMzzy7fK4wskG/BvVg6lTqJ
	 sQdW+BqpbdLiTnIoOea+U95rL8HdnIXVDLm7XNEWHJWMRNNakX0qHEXyBKstipBeAB
	 1INr/ZrJWuohA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B84C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946199360.10223.4663754545044627588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53eefe02a2646a6fafd57070eb44b35c58065e5ec6318a9d0f34c5986f12bdef
Date: Mon, 09 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749461993
