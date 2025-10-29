Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DD330DEBF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761726594; cv=none; b=sR7lhLRDRbeXK46VyJN0Z7Z+UNmDH/jECLSypnHaI/jMmKnT8WheoCNEMzWEIzJUL72pOikcsh3mjsQOtu/f3JMV9S+0pax9WbPzTH6EdOXenlb1ThmEAIO4/zkGZ4nBq2yVW/Yo1o9K0LHB7FJHDxIXAooQYpWsKoT9KTiSIS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761726594; c=relaxed/simple;
	bh=sqyBJYD6eYQwt66sE8BKGHlQoFc+uqqcgvh2BBTw12k=;
	h=To:Subject:From:Message-Id:Date; b=qd0SjxJFss7tRWVsyCeAJq10HlPgwQme/mJadcTb0cMXUgUuwLhzAl3TGXjTvd+dwEQt6UT/0jrT4LPu6mTUZxBMqjxQ7CMSQAbwVgbTR4fCtO26COQgN6gnyms25OV9d4rZvxktQ5AVNeabxd9imycq7Zo8W8U2DAwLn8yeUJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tf5vqAM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tf5vqAM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F53C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761726593;
	bh=sqyBJYD6eYQwt66sE8BKGHlQoFc+uqqcgvh2BBTw12k=;
	h=To:Subject:From:Date:From;
	b=Tf5vqAM56KXqKdRzhYekZg+wjy38S06r0Kl1rlIVUcQCnF3IBFv2AV7id5MtkNYJ9
	 2DTkx0HhLdCwycEdYxOt5TgQn4aMCUEcvTBD0m0HXBW5yVp1K64H9EVaHbhQC+ci1m
	 kNTRHHblK8k18wIQ3U0XvqD2USGovNG0n0dov1n+ejR7tE79BT+38c1cDeBW/oiJoc
	 JWxV5bGnnaboE14XjH8AVtTRkMfi6xb8o2w+GUmOvR/qd2DmeBXS/u7oPrvALRaW5Z
	 Jb/WEldPoNvG9/V3xK6fkBIFCFlUsSc9hGhejjLASyO5GG0n5/UeaEM2NRZLNj8+Wf
	 MIhtS6BvinUdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90601CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172659358.31674.4925190383045108222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3826fb3e8a070253c50f8464be6e9067d653bac214afb819066201a724d24cce
Date: Wed, 29 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761726593
