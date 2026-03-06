Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F60513A244
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772764494; cv=none; b=AQahggeXD83gq74b31lyzffS1oNm4m02tpt9KNF7QiGK98MZx/1FshUnOzcJ0qrcYb7siiTfBo8u38FHRRCLG9+Aw5HxquQXH72wh4X6yPzJCfIaqyuqvCEl66P7/ExaLdHYdLehG+cPm3soBaBlpyBZUoFc8LMTup3tC+VWKMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772764494; c=relaxed/simple;
	bh=TPQVZ2bMBJK8n2+cgjXDh9DeTO+qs1PeLCrcor1I1rw=;
	h=To:Subject:From:Message-Id:Date; b=SYQNj/Af+JNS0/fPIEt+BfHehqJX5bf+qjOCM4WLKfMbJorLFNtBNIuJkiGAS1TEYc7LivWVs0Gui51/kmwJDX4PT+LlKgwvyPi0EJRXHlYcIWXO7OyMzf+GUgGCQNRg1rtEhmwOaWTR5WvEI36W9VPsQwljlRh1IRKRubuRokU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AL8wkogl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AL8wkogl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ECFC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772764493;
	bh=TPQVZ2bMBJK8n2+cgjXDh9DeTO+qs1PeLCrcor1I1rw=;
	h=To:Subject:From:Date:From;
	b=AL8wkoglnDkrlbK8KdQNjurcGP3dSbFRbaC6PU6Dria50T7aeiQDX70F1E99GCZzo
	 W5aMX/rGEcxJ/DMy6j4Nq3DsG2MV5LojVBGJWWZsbYmduQeA+yOjwV52vsaoodYiki
	 rpZ2bPiOTdVMw1JYOugIXpv284riF9BJgHH7gInBh86wkVxA4B1VP3ZZ5K5qRTX8In
	 YZqOVkldFKMFuAiOFGFfT1I6HviTsU8Z5pCPBBf5UUgMNMAL7HaTbhxk7abj8zs5vU
	 sV/xRcaBfFJwGZ1wQwmvQIkdrwm7DY5H6JOd/cClPS0WMxstrHDqyTB0LQQceaDnKL
	 wtvmxUgwG3oyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F6DAF513E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276449361.5720.10579751596927481795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0953b86b01ac8e313582b77269dc1f346ef46ea0e672c463596c23af66f8d734
Date: Fri, 06 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772764493
