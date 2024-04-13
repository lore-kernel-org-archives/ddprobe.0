Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5396B45BFC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 10:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713004763; cv=none; b=IMqom/YsTDYfTFlE+VNlYJrinLPVCjme8NkWvZFl1XdmpEde3g3ZgNQFu2doAGv1E785LWRxEwXSY82BQ/EkIQ/S6C+VHjLQwZYVyoLnbuZMoab/aRiPy8/kzy4EttbwAyhnlyvTttzEQXuxIojakAD7kAoTWfhT0HqouvYyfa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713004763; c=relaxed/simple;
	bh=/lD2v1IQMYlaV5HBVVoEGS1nAq4BFcsN/A4ImIU4Pms=;
	h=To:Subject:From:Message-Id:Date; b=XkNauUShWo54RmMFKSf+nQAFPDVuqMROVe7uVd3mfmGnaNd9LsEjaQPZ/hmTNjkjVXBGgxiVkAy8RZQwWlQA3h5JlWvVO1DJhPpSCbsSdFge3dC9XR9Wj6gHkVv2qA+EJROwcdAplvPFxOw5ZOPs1Sc5E3kgzz/KKoytMtf9KXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b02rL/7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b02rL/7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5333C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 10:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713004762;
	bh=/lD2v1IQMYlaV5HBVVoEGS1nAq4BFcsN/A4ImIU4Pms=;
	h=To:Subject:From:Date:From;
	b=b02rL/7a9cPjACjkn3VJoZKRwOmRZgEG90Ia0yOYjrSF/FpH01qgbdxTdeWrlWTgr
	 bwucQujbCGRZ4ty8vnulPv7fpseEBj93bsC1vcLJ0a5jd0zDVPOsGGKb3EFJ6Nw+HC
	 ylbz+X1tgTpAxGPb+iVL5FVyoqpwVi2ZG9aR0zBTV+rhCjGBT1asAhvZs7MYehbkx8
	 jh1fSCBAJ4kXpqSVnrx4O9pa3H+ywnH933hEagokRxxqnpEjeruRANvhHNYL0Fp3sn
	 ZIOSvT/E59P6Nj6ocDbyu7s3BYXzOYb2UOGKc4EtR0za9DeYwzcXJnz8qjeTxTYb7v
	 qqUFP7/0hpP7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9404C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 10:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171300476279.21510.372681090595150496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f7f6968434279217ba2ac4b0f980fb45bca731b573290219af9dbb94feffc2
Date: Sat, 13 Apr 2024 10:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713004762
