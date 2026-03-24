Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E93124BBF4
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774371894; cv=none; b=ff76PpH8WGCfjiVgD3chzkZ6g5T3XH+WoHBGx0QIyUYyLHt5bNhZv4+s3VnOWG9Xuv/0KVmUzkhMZrNwqNyZnyfMQcJV2+qfsaDCyYcsxUZvwnrOTSwl2FUxpM9zrkxWacPoAgE6iPsMg4jiB3J3v+kJwguvAOqTCB/yWQ3BOsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774371894; c=relaxed/simple;
	bh=UD97ZZNIXtaHi7QibmRhyIln4BtoENjKCjO92jcZ1tA=;
	h=To:Subject:From:Message-Id:Date; b=K1e+tbnQBWdaqzpgg/b8TvEXMmvmK0hquyeKCAVqiuJwE2iy5JC3hWvj7r4bp1okh1lhEbFj1uc7BaiFJeP6pB4G0vRV4Zcm6QmIszWxzxil54hi3k/dFRm1NgdacvA0f2YuEC+6SOEm7Wog1TwjaOSeuSP9SnxRPvgJ8oxty0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5M+MX7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5M+MX7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A126EC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774371893;
	bh=UD97ZZNIXtaHi7QibmRhyIln4BtoENjKCjO92jcZ1tA=;
	h=To:Subject:From:Date:From;
	b=a5M+MX7F5XgbTdjVoSAqXn8sjFZMX+8IHFTzvc//Ly9eFAGOw/KQc1M/6e4u+b84m
	 jB7JGy11X59Yulv0FwmXFKQ3hGsB8SLp3Zay3QUlR6SUU30FUQkzTDsgYi8P+ItqcJ
	 8B+vH8LI/UcFOcshw25UZyAgFYnGZs7N6ORiy56yvBK2cu7nzu28LAxE+s4R9zrrQ5
	 hRTgm/i9kFaYx8BwQd02v1OsP8ciaXEqOGcRvk8fFUPFytliheW4ZtWgbAh6OjKqnJ
	 PWt4Zur3OdqmLZK9frhCKjW08HxvdD8SBr7NCuZRUiHxawS9p1+GNxxXtJ/DiT3N+Z
	 GY/VLIpEC9wmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93038F54ADB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437189359.16744.4102538715672356147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11069229568931f483785a202798a0f81a61eb379eb0062abedefef7bca36357
Date: Tue, 24 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774371893
