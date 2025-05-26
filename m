Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330DCF9E8
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748285394; cv=none; b=tqhNyxb+sueifNmvzv2+Gw6dEdfXTkq4bDCesRpbeMx5BaaYTBDOnpy8TbxpBkRxEXk1c6Re+pAKeU1b0Ux4JaIs7XwJL8bUURvUW4l/6NVz2sw3vC07a4t+AB8NFm2R4gDMqv9sd2Xt7OXg1si6Tmr8PTRog2h9xz1Q5+rH6oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748285394; c=relaxed/simple;
	bh=LEpqF9c+xFK0HGG3ElUKCOgsFBmcGLkT1usza/ZDgM4=;
	h=To:Subject:From:Message-Id:Date; b=EjEbext9MptC/5L81zuZfXgpu06votJPnKmxpcI28sKu1DeIpRlU1eQVHfLAvKDDKS9ZPa4G0Ir4AJGZQkF0zRgr6GcyXBjzErnIIwmnMu6Fh2VKCHo2LB5TwwQfPj4yStcU7ar5NZ/b2usvkawKmEKC2twuIeX5RFQGgDVQes4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6j4ZphT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6j4ZphT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E11C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748285393;
	bh=LEpqF9c+xFK0HGG3ElUKCOgsFBmcGLkT1usza/ZDgM4=;
	h=To:Subject:From:Date:From;
	b=D6j4ZphT4uZOH7m94u4DG55fYcanZuyB8bUBWZRejYHTnz7GMirVQy9l3aZaxQ9a4
	 GNJubqUr+vpCOiW6VPyG7AcUgBPTqipx3gNaPprnXBy92019qafZfWo8Ry+HVZvZZ9
	 IShLi8a8H1mHBCz+GivTlp3y/HD6ZmUhP/EbppNZkPNfFTvxjlUffQxIT0WTqZt+uY
	 qiCZVPXwmgPOyXCgDHCK13JOLr1kgBTKSH5Y39BPtvckuk/vMD5FiUBsfa9Zvsbf7a
	 xSpa8XMz0Oq2KQqBy1DrmfM3xORGC4HATRr8xgpAi5iuKJ7Jwxm9rZomiJW1zBYZPe
	 7ucZwOux5UE7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9502CC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828539360.25120.6020974422628912321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339fb998adebf6aa014d03ea9047e7efd340af01c92bfeefd695418c7c3bb591
Date: Mon, 26 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748285393
