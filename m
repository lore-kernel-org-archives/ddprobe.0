Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459322C2365
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770793494; cv=none; b=LExnuFkMyp0jqDAP8ZoAaMctJs/O7lZV41zP2030+cQmDUdj7ltAWjCL4ZPhR8FM88y2j47uPeoEp6Ay0E60W2gvpH8q1G2pTh/5mhfp/wDLFu56poYOUVaKSVRmiwY6UsjuBK+LXjKpmXnkyhH+4Wl5Wd57ckq3poAqqBihEXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770793494; c=relaxed/simple;
	bh=+vAD747Vq5HBBZlaXjzNnKUnY6i8Dfo7M1ysVlm22k8=;
	h=To:Subject:From:Message-Id:Date; b=Dsi3hN2xCuHBTBlPQUmY0GGe2QHkbWeqDE4PQ1WAm4LYGjop/lfLuC+yXkzjoVDqb6wm5mD+MU7I11XW4+tB6i/3WTNR1JW0quFGloB+stlyt8Y9RY+rlHoNGWv7/FgxS/WDAcZJy+hyTm6bP2X0YgyvM4KMJZWFOUeGgWKrB18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alHVlCD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alHVlCD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF12DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770793493;
	bh=+vAD747Vq5HBBZlaXjzNnKUnY6i8Dfo7M1ysVlm22k8=;
	h=To:Subject:From:Date:From;
	b=alHVlCD8czzAqD/QXh5vSOgml+/6h4u4IW1uHG0BPGNcCYCNZCMQx7MZ4sSg7bZ/z
	 Dk1ZzETgCbBVT0gQ6WmD1ivZWJM13Q2C/thAp/ua0T8jNIfGLCowl0pkjK2L5o6Fcc
	 oubaVPbNQ3ngV9lMqZpSnLgQSx44wSDDhGuz2RLqoQN3pMFP9QON7XYHF/zn3Qsq/0
	 LD4YoLjzo/GfFK//95Usr2xCfNmeiy+Op/knfchSiUW4eRW/B34Szlr7fTSPFeRjlA
	 pTg0P0Hf/toVmzKSu4NlB2qEf4cJptx82usKyoaFoNWKnj8Cr8CX9NjWzISYOCIi6h
	 TiJy+0l7Tt8/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9347EB596C
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079349374.20651.2279348575879380891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce811ea4dc73a6b221ce732290c2ba8b67b3541fa8edd1b14dd6f348716cc1b3
Date: Wed, 11 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770793493
