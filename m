Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334E321B9DB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754054394; cv=none; b=UYIFTAr4T8awi6I1WzA/DvO9a8OIx+RNhmm427RxXvYnCxfJG7qwXRXBMI2o4FDjLlc0xl9W1guKFndKAIfi/Q2sUjvJizRqoUi0vx6ObwbY3b+Lq00u99rrEYn64JRZU0LPmJmvo0poMiptOMcTwjGxZVAMW2Wt+Ogu/hJvbWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754054394; c=relaxed/simple;
	bh=eSTq0chbq4YqZazIjqpvFyQE3dYO+sdNamPXQIjxirM=;
	h=To:Subject:From:Message-Id:Date; b=HX/kthhxRKQo3lXo+PYHJtqX3RW4skrT/u1Xm4uqEo4WqMW+YtMaqQYdm9ev3qOYCnnzUhLbL4rP799w3lwAEyT5KeC1ETDzf6HsEpVhaS3HfSbDX36q7zU0XC09LI/4M1kKdLqXQNGsXAdvCieWjYVCNXFpp0ZjrAZT2og2pio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDuDPlF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDuDPlF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754054393;
	bh=eSTq0chbq4YqZazIjqpvFyQE3dYO+sdNamPXQIjxirM=;
	h=To:Subject:From:Date:From;
	b=YDuDPlF+0FFc1pf/aFIxw+dLm1HAS7HaP7Wlj326MHs28ESSqE99TmJrarVgQFGjZ
	 qx4Vzcu9Za0GEXbH1W/uuIN8YFyL/B8Pj23tm4XCcKRo4VMrIUgKN3vVzSB8XRG9nZ
	 TMOmoxVBSuTJHO8Q4E1GRNTEiTUeSFQpZgHx70C4egnvvzuMOkDoJ9YLp169FBcYRD
	 S2u4+HW/lTGPSBQSsl+aTmbBPWdk5nfWN+Vo2NALfcdAqQFqmSj2VaQAgW1eaL0Z52
	 VkEKEvVd+h0FYK6WPqoaXPvbDjW06VheXCu2btmxCrQ2RPrnopMWIJgZJ1CBxGYffv
	 otjzIY8iXuseg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA72C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405439357.3031.9397335924103738157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532a959a50db3588a263a84d1b3b82a117a84ec567b16beff110abd3529b7597
Date: Fri, 01 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754054393
