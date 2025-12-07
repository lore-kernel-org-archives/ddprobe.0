Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154211E4AB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765126974; cv=none; b=JYe3Um3KBvtEPq7ngWFQM4OQOMjzVHBMX0tBoZ2WYnzlWjq9Hs0Teq8g36XiYKZCXQFT7loaNs7xGP1x+xCaNyydFK6RIYH7Z+HhyX698thwQaQEl/A+YDRHjtqK5BTYQuWEDy1197990rp/OtT6jJxMo6de9G0sh9Hn75s7iFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765126974; c=relaxed/simple;
	bh=+++JL00z8fUkF8J8GY9PgAO0292UcYnQoFHrsrVR8Qk=;
	h=To:Subject:From:Message-Id:Date; b=YFjh9hAkNAFffSUTWvtWwkYK3QilGdNBstz0OHsrWa+AvmzKRpVM2Soxd6fUcudHzqxtX5Ws0EZm2CMk+RrLPdsttpnb+R6FLZ1JnkcOovVfPQFUBBFz0dsgQ6CrvYo4odu1UU64cR2JLv6b0Mhni2Pul8LrMby7IWPI/4rTsvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/JqOQOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/JqOQOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B6AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765126973;
	bh=+++JL00z8fUkF8J8GY9PgAO0292UcYnQoFHrsrVR8Qk=;
	h=To:Subject:From:Date:From;
	b=j/JqOQOdOfDm3bpJgYZ1mgsHW6V6yYR+ifwQw42FtHCS9jS+wHjM+f7HOnPFaHKZn
	 SBbkGWCFKeJRq7tHa+LLZN/uJID/tPQpUhsCpMQ4bF9CRMPoX3XEgnirtu6mQsCi2P
	 72YSahZS1KD3iyAsman5V5kmCnPOA2rztRvyv48klb1tiQF/lpWjyaeAq/bLcmIXCk
	 FIefRkA/BGGpXO9CXnNE2glWfZKtATEyTYDLNecJV4X21x2GYgsxCfDNBNyKi/LCq8
	 8Ca/Kc6aYc+8jh+ErZq9ZiAw5pyb+kO3g7qPwuyCU0UYTuHaVNeSu/c8QpuJTNSgt6
	 7VNCP93gHfNsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FB4D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512697359.5752.3220005217782209171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8902f52e6635fb93750139da07ca2ef4201a7188e4c38c938539e80fed8d77c8
Date: Sun, 07 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765126973
