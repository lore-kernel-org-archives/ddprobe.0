Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC1A28FFE3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746791995; cv=none; b=ZY0Opq+/VKrZkQOC9YQ3eOjBE+86jik4OYz8uP8KF4vVodL3T1IJXO12qBO2DupwWG4A9xloYxW/EI0Z8npbGmEuVWltxfD+GvSyMTYGleqluBqiXojz5UibLXYVwEFHY6FspnxLWViJj4k11dPlSPb/tDHaM+1TW4SBtHNf4Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746791995; c=relaxed/simple;
	bh=VWmnWCBHKCZtbrll2KkykoFO35gYBaIIveNQrI5UvbE=;
	h=To:Subject:From:Message-Id:Date; b=WoHGJ33UCSaeUHM+OKFfnBK8fYbpcxRsboI0NPF40fEbMaLjI5+KHDS8mkKTZcp2/USZq5EKmZH6aI100ByotjwZijcimjrre0sIEILb82sK8zF8Ki8qmrT+F37mTtlo3Q3zDRF9zqMXpHdgRx0JzmJs3aJnApwk74dnINhK38E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEF41p+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEF41p+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6C7C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746791993;
	bh=VWmnWCBHKCZtbrll2KkykoFO35gYBaIIveNQrI5UvbE=;
	h=To:Subject:From:Date:From;
	b=hEF41p+FbuWCOn6VzFKk1DJeU7mHpOkGSeUAgXcKcpTlJRhW1mXx4RsCRoWPq4Wu1
	 Ggas6JHSWk2yyhltDR818Vk7UJBUCx4tPQEIWP4U2WbGYoKcO9m8/fbxtC0PP3eyQ2
	 gQXWg0gBe1ImoanyUjJs0Gpyx6GOGo4Gmg3WkNiVmCVw2S2U1l8PW8htBp3KSTos2h
	 bkC0iodcISnB4/DATzMUupWhqcRFArkySgQxRecikl5wyWJonl3nmlEVO68nTwOD6C
	 fawVYbHAVCKrqS902oEhB7Hg4ccbPsNUQ+kINmai+27Qfii1qvBMy7sF9WGBs+8geP
	 nyaLyDBUf+mJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1D2C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679199357.6436.3007094292559954771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ee23d73aac3ae62a5625ff117b7258d07b9cb4078c7006fcde243f767aa4e6
Date: Fri, 09 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746791993
