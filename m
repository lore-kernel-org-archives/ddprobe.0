Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6C43BBF2
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748096994; cv=none; b=Sr5hQ01TlVIAbTru9iz9/4bG7i5QTvccI/flxdTjoS1/7+6fiCwJGQKs3wcA/hmQmbO/YGr7j2HrYb0yPkGHwAXNblR7X7b+KydOQb4W9V29gBhG929rXjro4FtmzJWbNl0sP1TOWArfmvTAgyXVHWMobJDmlUl/B82hIkJQRhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748096994; c=relaxed/simple;
	bh=zi0ymGG2hu/bH19p8+tkOW1FFCxqhkBFMS9TV0p5Bao=;
	h=To:Subject:From:Message-Id:Date; b=tq9tmT2fUcP8Uu3p05VJ6/uQP4kGcv2qSqbjv9j5bD6jMdfZ8RvIrAbYtu4diljnKaWWZfzKqCaSIWQc3IsSXOurpA8c3Nr2gDP6Kxy9/2XIqZ3mWyBmy3R3UVS/nbBVXJaXpXkcKPTD7p5E42AiVJ/cBo/IL1Uns8idkfUwF3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQueUKZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQueUKZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47D9C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748096993;
	bh=zi0ymGG2hu/bH19p8+tkOW1FFCxqhkBFMS9TV0p5Bao=;
	h=To:Subject:From:Date:From;
	b=gQueUKZfDxkUY9X/l+7SjogCNr7a6V/bWDdluBgocRbd5XzDAuN33lZ2RaJO20iqG
	 2T3EXSItOQKT8BNoTCZufDllt1E6/vcjavW57xPUZx56hDo1JCsQNxjKf69B3F1ITH
	 4zu9T8ZwNrQGbtYFc/ZuWWmiJ3HHQ83kx4hxihSucxHgOrkmqyEu3WWSehUlcquUMw
	 fxuqOEhFjJEl+YMf+/b+4ejWKW6N4Jc7HlwS2P0Sm5TWdVSCOn8GPTWtTd3MrRaqWD
	 qnPxk3JOz6eIZi5zzh4WuEMt2kwUxPKMfPxvfnXMFYu1RO34A/oQLTNM0Y/jt1RCsE
	 ooGQBq2aoUeIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB2C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809699357.16936.11357336940997136689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 957e158518b06008c0bdd2223511a75b594786ad406da66d56281ef5f3040433
Date: Sat, 24 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748096993
