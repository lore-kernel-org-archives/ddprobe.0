Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404711A29A
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717913843; cv=none; b=G7UyHt1Au5E/l5qsqOb3ttolfmvCktKNpszLNp+CU3V6eOsw2yX8vSehkI0SVtMhaMypfuE7ixmWJPXEWfBuPe7/DXg6xgfpjdMdV/wKyvMVTsusVCXMbBC/g1tom9IOl/b9we/rW0QLTjSq4pehCfoATI3YmPCZFpuwnuYPN+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717913843; c=relaxed/simple;
	bh=AmjHXN3W3Ynw1TUdcNPUB0QzAGCLbB4zLa13D6pLrzg=;
	h=To:Subject:From:Message-Id:Date; b=nZZ9OE8OSZlEEQaeRUP5PwbBDx9aviWAvMJKiAkpQjmXDzuRP9Wh2v8Ht5gxL8zfDO//hXpQFOCJeDXsjhp2OfNZRImUAtqu3HVYDYYNVErmKAqEE+/9Q/2nWhZDNZqCzdJuUCc0t6k3WnQoB1OLESCdrKT4tdnecTM3jTW0CAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVWjwfrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVWjwfrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13B7C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717913842;
	bh=AmjHXN3W3Ynw1TUdcNPUB0QzAGCLbB4zLa13D6pLrzg=;
	h=To:Subject:From:Date:From;
	b=XVWjwfrnTjFhmDCvJJd87L1lVzwPnVmaAtjJ8x0zuKB2qAnDGmW2qUiq3t42OJKUv
	 wv2fnyYtF1mmYt7T2matfoC+G6lQeCqClDNTCBRR9Dac64OCuIVBR1UIuVlm3BaRhj
	 GLtkWDNDPm7lUrNhALWzI3UD1cnsLpkh6mYkG7MWHOmjD+renjkZTbM9/EPd5HTqa+
	 JuJap1tlMqjNVGDLO0ajHsXvwXfWXo1b3zOG70ZDq6qXhPoIsdyD9XvY1CISZA194o
	 +1WZUudC93XSontuMdlgAXWuX/3g9yvTGBIJtwipnf+wM6eRTaCin2KbWI4BUkFvvl
	 xp0XYI+a4KQkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE065C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 06:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791384276.23497.9427697820919760716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264ec55cb369bce49457cb3fc68e943f86af1d710b65c4637a96bf503ee4a149
Date: Sun, 09 Jun 2024 06:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717913842
