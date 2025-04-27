Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B8F256D
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745787594; cv=none; b=JymBK9aPpF8+TpOv9wHegY9W/RmHRvQ2dPS/tUWI40PoAr9IT2BKdoQePT9Q5jPjsGjRAFotkR3bZf4U2kkVkloy5a8iafCEJNa0xUvlZfRW9PKv+n/Vt8tYs2tiQFz0P/JuZRZQg8BSOUQrmUhyTeTrTng+JWwZ+AfswivSKBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745787594; c=relaxed/simple;
	bh=cBBIMd7NWY8DTt9rJrpqsRHiQP3zJA1q0ygFBKk3idk=;
	h=To:Subject:From:Message-Id:Date; b=Q5wt1+07gx04aDgyHYcdAfYGHTHnm1QitJY56i06itBo5v8EjzgEVn1M8QqVbcqXE1O6LHZMpB6u0NM23x5cQKmiPSDF6VcTTv3dsLc9yA0QQ8bAm2kWKHOa86C2AWcKbznRLfKJzTMEC6xckzIUYpcRhzYnmCB6JwP9tg4d1/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ie1F1YcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ie1F1YcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F60C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745787593;
	bh=cBBIMd7NWY8DTt9rJrpqsRHiQP3zJA1q0ygFBKk3idk=;
	h=To:Subject:From:Date:From;
	b=ie1F1YcZtsFUREjZytCnVZbwwjXYjBMwGHI6tAZ4ZefXObs5DXreOFCIkSNpzydxe
	 6IpMxPGrs07ORMaPcGla4XrSyGTka443xC6EUsfZ63IFFoA/Zda+oKrj5SfEgt2w7N
	 tQP/GtIfDRiVDnXiFkvVJbZllmR9mkDCoT9N7fsuSqPfRv0avYp6hOkMBglB8Pnm8O
	 TNujqkva7WD3zllL+wYOIVFSL+mw7Y3zMWYjrscgDGBmFlkVoe19uMEvL6wdUy6H1r
	 if2xGF+/3MiWuyHPd0fqc8hZDBTFbqy3uryxxWZuXJ+oHaW4Xq0oghkSpxpuVxkL/P
	 5HAkTbgZR/aJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB52C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578759357.8967.15242994809602613706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d61be235eeb80042b40800adee811567a12d6219dc76c8341b8e7e08730722a
Date: Sun, 27 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745787593
