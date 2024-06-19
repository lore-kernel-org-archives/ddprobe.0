Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CBD55884
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718819963; cv=none; b=t5K6/CbNEmWKIGnsIw0U/ctcXTeUKCQx7d59IpKiHJmQASxW2PeyurMuP6XohLD9pccDccDPZqkHXGg0dIY6gs/q9/zgADuZvYFRsRW00uWEYAOAV1hCFK7xcTCaExUMTtsInNTNECrL/HgZrLuj1chvtH/SshKelGBfpU/cMuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718819963; c=relaxed/simple;
	bh=F33A89bJmy5Vs4Ke4U+FeG/Oyod7ba/Zmu7FsA+WLGw=;
	h=To:Subject:From:Message-Id:Date; b=g5MVY/tYGQ9UUZLGs5n7eDZUMDW2bQYiIB8V7Av/hsG85gnN2sSCNqVjFAMVfUzC8Rh8w2ajgH9muoCZutNvmWL/fbsxuV9Bjkzcao1LYrju9BjwCz12wHikAZQ1DxdwC48CSSt4TNqvqsw/+5ETG7WtbzqXGq1cV+X+kWxG2ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ef1dgj0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ef1dgj0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D33C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718819962;
	bh=F33A89bJmy5Vs4Ke4U+FeG/Oyod7ba/Zmu7FsA+WLGw=;
	h=To:Subject:From:Date:From;
	b=ef1dgj0oeDE+vSspgxjGrQO9VgZ1MqQJXOHZGl9SrIvVsWu+k3S+Bx4OWCBzHtESn
	 /gIOzkiVQc8Nb9uaAFcicVHJAMXetJYG6FZJz2u+pwW2wAz0/QWAlJGO6UxDprT9EN
	 1brksc+V9fgQwug1wNVVWyJ/AaoIdYx8P4wPcv6rUaKYwtdoFD/AHZqKX07IIWRa5O
	 6xWUpWin9nkZsEv4HDbwVIjYftft1nuy02K24nXqIDGurRjewso/ZTIUEo4OVXxy8e
	 8VHM4J2ACj3o7zmWzz3kl0+/urXTKJ/0PeT6vhQQD2iJXbYim9UVsHqj6ABD2HqdBz
	 yF2y5KZ2G9UWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB321C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 17:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881996279.19955.10238895380630715791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617d732ecb51a02551b517d6ea16d55aa4cf85059b7753500403e72dc67ccb3a
Date: Wed, 19 Jun 2024 17:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718819962
