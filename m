Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427AA35976
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737747354; cv=none; b=ITrlHCIYiFT5INvBiFrvnbih/u7h5r3R9zikReKbZGEsXzE6N3exQM7UQYI5dsHpH4gt5DEwnnFpKdcvB6i7nAZ8mY8MUVbXvIH57a4tVCb6xB5W562EmAAkf5jRnP/sd2GQ/AGEkWk4GGJU7xtF9IVw6kRbYx1nOzGxTFsIycw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737747354; c=relaxed/simple;
	bh=/D9xWeKY1FLGqw9J4/LBq2/ry+WfaHd5Kndrp4/co88=;
	h=To:Subject:From:Message-Id:Date; b=QG8xzjHe5KiCGmxlZzUItBv8XZOqXNZ4C/Whm8peztX5qdk5/KLc5IghVjW/Xmo5Kt6iNGMTDS2RIY90IeIUu2aPmhbKmPfk2/jHGOpGw8CUT+hmfw1H40hzb5OnuvGFMKQGz++3iPMNC3iPuJJfRY2Yv+4BCKo5jdCGNdTlcts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqoZslxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqoZslxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A147DC4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737747353;
	bh=/D9xWeKY1FLGqw9J4/LBq2/ry+WfaHd5Kndrp4/co88=;
	h=To:Subject:From:Date:From;
	b=oqoZslxBBjR3E+y748LGBQceccljUON0To+hzTq+n13XhDZvdPQLcHImVoNiFbUaK
	 zhwqkK0V5MFxaWvYMuZwfevF+tylZMyz/XHvkBD2Sp1aKZGEE3FuKbhRFRqpr8+oph
	 7dPuloNkhi3TjhEDwXPkVTK8NMNDX6N13UZ0oOOqeaJGTv50F9dtLjjQ8h6yEDNMqz
	 0mJFyXCeOEgu74kRGdahJuAaAGjV9iE7AKIDm0sn64gwQeKZUON5KLbQL5wFBoh9o2
	 8yemIx9H1aBVfDEL2DQaLQ+iMxnxo61iQfYw8bqJ0Kl2NRP8byAL704kqukSwf/zui
	 R8Pf+mdFtYX8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904F2C0218C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173774735358.1859.9742430278142902287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6afe03a48d684ea37744a121cf53de3d0c487f639181c073127f3cfa4cc1d09
Date: Fri, 24 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737747353
