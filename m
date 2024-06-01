Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2C4AD59
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717237463; cv=none; b=lLXlik3/wKuc3os1QhVDZJD7d8H/E2zDd1VJSaC5cYjpkCmPUUcCJPpHwaoWnlz8YZgwMD6ZeMnyB/7YTe4P7bpUJe9Qh0yhEoVQy0gblcon4Lqf73F4qofPldpjmhNH1eX9F1YW2JJwkWAaWUBOdtOzDA2Zr37ntxwCarkumXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717237463; c=relaxed/simple;
	bh=3KAB/1b24pP2/EGT2wnTOJGS5alzH4qKiRTFlOIJ2Wk=;
	h=To:Subject:From:Message-Id:Date; b=FlLFqY9wSqbN2uLThNNe+0Cg8TCgqlXoxdTHSDR6jIluC4x7t0eM5fGB5qI7shPB/o/rOLJZm4rkKNspZq2ZqjdaX5h5aC7BopZOhht9lVs2NQSyt/0telwT1TwfxdLcdeR+4lnfMbWKsWsOkamF5wCaIwGTTjTdI0Srw3JucGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7bMIzp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7bMIzp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD6BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717237462;
	bh=3KAB/1b24pP2/EGT2wnTOJGS5alzH4qKiRTFlOIJ2Wk=;
	h=To:Subject:From:Date:From;
	b=j7bMIzp/C6ccu1ahTRgmRuI1hDwwO/73IROMdhKavU1PPiUIgb7pthFCVbfJ7h841
	 NazARSudqtTWl+zSNlWikBZoDtJCSLrZ/kR/tl3cBoVYigS481+MVgRCOWs8UyYtMs
	 niImH8fc+CYrjJOhBoiACMUQUOzIrmgqHZLydGRCuu6QVZf76sNUqUWhJIGgMzr0Eg
	 x/enn9uwg1PkOgDWxg27SkVARlSFA2HaIz2tn1c1TQ7mAI2RG4uOo/ZFYq+thwkV57
	 Cj6xB0CaJZvBTo4OZ8IpqFRJ55Q8fVyPQGNiXVJleysV9hjo7BhdXAEb0gQNOaW0+P
	 Skq7a0mxyW35A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AFAC27C44
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 10:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723746280.12747.6822761778250187666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ec14d9cc3f6a9712b7354ecf3153579efaa662afec29eae39fec49460f67ac
Date: Sat, 01 Jun 2024 10:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717237462
