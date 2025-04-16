Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335D9221572
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744787396; cv=none; b=dL/xeXXBiE4gNjMpOdFsVQBvoU4P1vKVIg615KXFlzUepQCYbwt5fm7rDm0VzzY2CZmM8q9SPHsM1QaqPuzl3PPDTX2EHUXJqJxYMbf0R+YmO0/g8gq8xW5gKAP7gdYeGG0gN9hhYvqEiGC0DCF27oesDUcoIxyzYxjJ/QiUnfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744787396; c=relaxed/simple;
	bh=m8OAJv57hSV+3b8qjSBSEvpRAmOM5GI/MTbJYvgkQnI=;
	h=To:Subject:From:Message-Id:Date; b=OiSfATfuzVJu5O+U6q3KXL+1Kw4LClAHsf5R9TzUip2QN8N9CuyCuxXiX9Nlj82tF3F/mAs44dFvgpSTLmJx4Pc5yyFaHI4fstvgN1y6dakAxypQZ0wCu8u+jNKrNul+iYVvkRj4inQAoShT9RypFc6cSaBtQCuE8PbBQc8Ni9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dObXTsZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dObXTsZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7570C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744787393;
	bh=m8OAJv57hSV+3b8qjSBSEvpRAmOM5GI/MTbJYvgkQnI=;
	h=To:Subject:From:Date:From;
	b=dObXTsZSr+2fSOBhbm6pB8ZIGQ0y9vuT8Z0HMhfjDED91wiLI2iNuDYu9PvPZoHlO
	 jHN1u1cSx4TymCPf3UBcp3yemqS9Pp4sUyXaTqRtAJGf0EKLP7k5Ffasqea55nN1Bg
	 HQAahNax8YOV21M+Z+Kk5IKCMSoziQJoJOJ/uhLqmPX4b+QfUyul2JwthhqiS53CWB
	 9HUD7IKLPkPe4TA6wu4JsadXVpi8thhwYXFKuIvpJrS/XkOc82f0cFN1ZIa7DoovVJ
	 dI4JbDI1RHLuJ5nN99HACUXg/GXhTulkW3rJR8r+O16gYKofnsg1keExl9p+D123ON
	 eXLSroS5TYn2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9783FC369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478739361.1398.15600378339279585538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de7f74be698c76c02b516514c87b172b5448184954cb9d853f97952e5005b4c4
Date: Wed, 16 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744787393
