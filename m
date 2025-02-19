Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6101C3F02
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739992134; cv=none; b=cBwRn4BgwnwRY9Oguq6ClTVBUhN+WK0w+/rZxdTM+FRqrUnbqW9jYOS3vFG8KLudY82bXaGo69YA0Vg52pTliRaLVhLuN9PEZqdPojCkxvos57N+sZGoH3aVOS6WPz4FK5fnHVcGf5aBsF8vqPatheCxRjpf8r6K8Ypvnu3oJQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739992134; c=relaxed/simple;
	bh=LPYDuT+3bfGgwDskcfIn5vmPyKaBjlnt0G/Ggo7MDrI=;
	h=To:Subject:From:Message-Id:Date; b=AEK+nqoyLIM1oY4hZMTAm4W/uc2S6SO8rBUP1JC3wn69p4VEUF0ft9RpZ+yhtoJc39ydl2e6L0y61jUdJ5aV2us16JZu8PygYuyjMfmkzBV16Hr6DKAEP8JM+3OTO7gNwKGSFZDZHrp5tZKzZL72aaT0vDro+THW/FV2Lzv30dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWnVK/+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWnVK/+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB30DC4CEE0
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739992133;
	bh=LPYDuT+3bfGgwDskcfIn5vmPyKaBjlnt0G/Ggo7MDrI=;
	h=To:Subject:From:Date:From;
	b=cWnVK/+BJ9FdiRLoQTy8oip+JylsAgV4KthPt/OfHFp9dp/tU6+oLI0yas0V0OFS2
	 x3/+Y1VoL/wotmjQoS/qKbRfIljK9VdXsh0Q7JrUqCSnLT3Vx0qphwZwZ+zQ997vP5
	 LcXQdF5DNr+3blyHRq/OuAki02iaBgvbeDgZHNM33afj6HVz0eqrJzEIkS6Si0X8Xn
	 LMc5jqHRtHoEJpCF9zkIawjev5Gr2JG5QHyXVdu0LT0bFeNaQOVTglu1va4cdRbFVG
	 a3drjhsaFon5NIFfODzCRm20PeUOzqEw8q8vrT11oLuzNfYuYMtmx3u3cTVokIXK53
	 Ck1iOgu8U5FQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93883C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173999213359.3151.4885995848303278758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac74268308813625c582173d68b72553a05107c1df7bf118446f3cb09da85b9
Date: Wed, 19 Feb 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739992133
