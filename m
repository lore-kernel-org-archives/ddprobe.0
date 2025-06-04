Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B9922B8AA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749030593; cv=none; b=BVQ4ydDtvXEPcJ/s1IkZf1ipiaFUHo8Gk5y2ZEaCl6VqA4TXHEZVmSsFt5Kq0YbgZPwWu+noW1ZffyyhCRPoW+eVHdoIrY3OSMCizjwv21chqsnsb8QYYDXai5zAuBpcr+OEoJS4eYbjK+2h3s0L1E5IMUcaLgtIX+6E9wVFSGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749030593; c=relaxed/simple;
	bh=TV3PHXqoAFu6v5E7OpMG4y0ytjt8C7/YUkCGM9f+168=;
	h=To:Subject:From:Message-Id:Date; b=km3Sc5slSvRgiEf1WQ2pUwMz9qHueU1KphjmH4h4tXscO0VEquoS1D89AXNs+v2oY1opC2wtakyGOms7fDTJctLUs4cu+CuGusPzig/WoCMQCaZ8I2V/zRz4D/vLQnm+tEYXQhaRE43yccceMQ2uftORu5a0PLuf8aBODpiNc+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3oqx4NM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3oqx4NM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749030593;
	bh=TV3PHXqoAFu6v5E7OpMG4y0ytjt8C7/YUkCGM9f+168=;
	h=To:Subject:From:Date:From;
	b=m3oqx4NMjjnGTWZBpWNfaiT0q8+nhP+UEfLGyBqjmuWO/8qnGrjgColuR4bSeZj+0
	 RtX+NYKWIlNcC+tb7eb+y3ukbswREWQo0bEbc0qxad0CuRRABEhJLmlW8VyYKsy90N
	 +wJSmqctkLic4uMdQK1/LYh3L2jPi1nK1rrBbKWZbJwxDPbc7Vk0NT2Q2mrnNfvejd
	 ZlVL9Yn66EiEGXpDxZ/+Lbi2f+FtByrsQWdGmyAS3G0WMvdmdyyfBpeS+1ZJxb0gYz
	 6miP+itnXM86ZnNn39Hu4pmCjMpcgBZEOGagyw5omX5hqka8g8ngTyfAKpKpbC373g
	 HXwyE3XiWjv+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93203C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903059359.30440.15372301101368446135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2535f65e4f4c5f56cc88e8daa2e2fce181739678b3a0c6cda4dbbe3200a49788
Date: Wed, 04 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749030593
