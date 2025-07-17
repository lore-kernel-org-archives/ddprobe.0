Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4412153FB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752779394; cv=none; b=b5o76eZ6vvX2xPSvzo2VBZ5PR6i9KqFZjzbBG15x7vfr9jsTsEf1/g6a5LpQupznaVDgut8pNhC1PaWEa0x/OZOrkZ+GibbS+fPVSltZfrGk5/f+1AIcLWUY/+Mh6qVQXuX8Du0gSLrTlmo7mfbgii+qAHwm/OTqoOVL5YfXsnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752779394; c=relaxed/simple;
	bh=vmXIJ2kHD5b5e9xOuWPi3frVAHs9j/mJr9/TTzahrbQ=;
	h=To:Subject:From:Message-Id:Date; b=eJppoBAzTgt/d7afyOuG5RnLAUdBAPZhsJKUCvWHjmMesxuXYT8Bl6/Q1VfLUX2pqsqfD/D7MfsTtmv9BYR33Y62jktISOrmvN2Co7csgKKX81W9dOW/dfINK52FZqRxSwQCTen7zhFakBGWBwEj5vO1xtckX0AWn2DbTikCwdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGTc1L8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGTc1L8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A204DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752779393;
	bh=vmXIJ2kHD5b5e9xOuWPi3frVAHs9j/mJr9/TTzahrbQ=;
	h=To:Subject:From:Date:From;
	b=OGTc1L8QcjqkeO1YC5YYm7OE0p6jXm2ySf0soZV7hn7YU8wtdoOVbUyOGoAb95fOh
	 gs5mw++x4eqyHUiJv8nI4Ioz3v0t2NbWwi2K5whruO+BWF/PzFASvMrXOeL3qEvfHi
	 J388xEeuqrE6Isqf3+Rt5Lh3ZUZvNtJRZ3l94VczZM1vvho8Tf+uF7nQ5KMOQFBWYl
	 Tlra4rESdHpK0GBG308cgr5mX3sDlsFbpwV4+6Lh6PzP5I6YUl4ijWRW/jW1N6amD2
	 sd4ymZaQPh8xj/xpznYhFnbQ/Jl1V1r0mGW70QFO/PmR8qDQE7PjQazKfFQn6p4sgr
	 Q2/PDf/UFgitA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DDBC83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277939357.14256.9139797377146818884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abecc1cf568ba885c81de570da4fcdeb1d918501e7366b48257c60138a41233b
Date: Thu, 17 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752779393
