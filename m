Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7312FF675
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785381634; cv=none; b=ummZ56aDEZwKcMzwjLzfD/btIHUq5XilXesxxoiXfNq3zlhb4CPhRcQ9ypmX6C604Xpiekv95yIB7XeAamRXtl/VQTyf+ukdBMZEbXu3fE2YG+fAAEBg4L6e4hQ3aLcv0Gtiyx6SUHSnIepUuxIAm+BnpyTwE8wocbKjyeut5P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785381634; c=relaxed/simple;
	bh=vWdEcJIKq3vzmWmuQc/6R1UFbWM9MAPhBV9pvTGNwQg=;
	h=To:Subject:From:Message-Id:Date; b=ZzMO42F2xAsl4VEQu03IV+1pKSLeUHkWuWOvaGJ0qNMKQO3yn8d1TZPK0ALLXpUZr0ylkAnbNRORcVkH7rkKLVqj0vzaZQevyLAj/jMNlKqKavv5/9Og1efdkODXeW0dLrDrJ8YUMmz/j7EO/kvQuLPRTcudmpf8VHLVOr7WWio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxFT4s3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxFT4s3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED8F3C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785381634;
	bh=vWdEcJIKq3vzmWmuQc/6R1UFbWM9MAPhBV9pvTGNwQg=;
	h=To:Subject:From:Date:From;
	b=qxFT4s3VCBO9pPiLmifE3ThkjcIDZXVnVPXRFDmw8U7BXVl7Z8W6A9W28I8q2wRgc
	 z3cST7WuaiSMs2K1QkbENO4kywWmofBqrJhALvIvo2F0V/PkSKgYLfyRrjn/gig9qq
	 vjTc3kcc5frfXoykKs3N13OP0Mq7TigZ6Fas4OejNRaIGQUkASJmAKWfwve3LJsljr
	 rCVjtNfhZ9LWH0GbDWAUEoZCvPkEDA2RgAMWReE1U3T2dRhF3gyPPz/FPVCVjFi7xl
	 7VIrnV1rVO7D5FLInv6uAoSaCfjWKEFNwydO/hYJ0mTDPIjvM2E0MQo4zRIR/z0g60
	 b79gx57Ks5/Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA6BC54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538163373.14642.5153578632269542084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bbb371cd08072c0c7d85ad43ac0685d0a7923bc39d4601433ec0256d817833
Date: Thu, 30 Jul 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785381633
