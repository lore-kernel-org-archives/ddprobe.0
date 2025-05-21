Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFAD2609EF
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747825794; cv=none; b=W5do3Md2yI03xpdcEas5ccIaZqLuWUIqAIyJnETbE78XGeA+LUmCswQgiw/E+QqHjt/rsx9DQ9cxmxBXPiYLCSwKsZYA8Gx3gTcvddbaXlCYidIvAaU9qlduex02krMLQumPMmI4Loz/DPjTIfoE0auvgIFX4b4sK1jxa0hB2xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747825794; c=relaxed/simple;
	bh=q7UrEjE3F/pDXfXq8jPzLCiy1yIVc0SJhO3UwdlObCg=;
	h=To:Subject:From:Message-Id:Date; b=bYi1yWNPna3ZfMykYCuK7Uoluh3FnppYDxkRy3haUJqa34AMGVpefTzSAQxX/j1yV6OtZu8xel10VGrVOocqU91vbQgLCnGYSax0IpxOznuPXXTSbDfREauGunAEPtVuX6IWA+iKhK1roTi6bXweCyvjZOIpo3w1W0Qvms7cZic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXwiHEeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXwiHEeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF3DC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747825793;
	bh=q7UrEjE3F/pDXfXq8jPzLCiy1yIVc0SJhO3UwdlObCg=;
	h=To:Subject:From:Date:From;
	b=jXwiHEeDAj7JgDiryj/+e8JPUBxFEhI2pXo19Ea2n/AFZaaPqA6xweSKFV8IMPko3
	 1R/6VyzAbo064OEOJdNGLelIJ9PYQ2PuioSeYRojeaD1j2torPAHeyFAPW095zK/x5
	 JuG1LnoYRJdHU0UidXhwDtrtsOWhx5Kj1OejG9d30asgiRT9Y7vjZo2IDOc+E6BS0F
	 kgLDOzy3C9Hx6Ac1pC6Ubxo3hIgXJu0fIg8VYF40jHkiIsJ7j6nD18UX1NxkM7D1rP
	 bP2cLg9EdVMZhTmp4zOrvQ6r5/kLZkKtEAPM1a7gr1HD0P/sWnX+Kivf4gILIuVrsW
	 2ccWVDNUT12yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD1C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782579357.897.7999637758500972364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b645f04af7a44b63f795da4d84f1b7ec42e900ca96b35fbed2dc5408b5808858
Date: Wed, 21 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747825793
