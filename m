Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459F913E8AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728721554; cv=none; b=iqxLv/99WixJdNbmcHoo3JJKK8nUyON3KbLdAxSRy/9zl5DztLnUnUCCttdgVrOuPM2x3Jxd9YmbySrfuVQy49qLZa5MI/rPoWUD25Y3q9Z8oG00+lRhXJ1ZLGpUFklK6nzRSvN5dqI83vI96WzRZxUGQVx0Wr5ppVf3Y8xrDMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728721554; c=relaxed/simple;
	bh=+HaqFCZ5PRotwMYQMI3AY8O5dkgivtHDio+uXJ0su9Y=;
	h=To:Subject:From:Message-Id:Date; b=c8Tss1he6/TbdSTsqMN5LXtVSkNFZCXRLAKirXtGePVESC9IA9nFdO3HyLT3ZqFg1jM9vlYkqD+nzS1U5ydyouD60VqtvRqtafmSLC7UMmyDnH9E/CY2GJO8xs8bllsHT+70r0igNIuTyKrBa4gn83i4o5x+bIJCUI3qjseDQN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajDqyJ9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajDqyJ9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD30C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728721553;
	bh=+HaqFCZ5PRotwMYQMI3AY8O5dkgivtHDio+uXJ0su9Y=;
	h=To:Subject:From:Date:From;
	b=ajDqyJ9u0Opi24E2wU3HkjC3uRbw0Iz5HnM2ioklmbTF+EV4BArbQFXee03A2YC2k
	 5vSNh7lhxlH63ZL2fjWAPux7TKcclbURc47Qo2H1GeF5UEomHQ9s0aXj0G7H+PpmTz
	 NQe0VF5qOGQoZIKqoHWBndJObCLw9AXzQyzi5kDz1bM1lbPu2dWHEk7dymyHfZTEyo
	 mrZ0xjnwTJFUiohVTVPBAPz+UPDypHZBmiQkW7zqA7uzdX4ywZmug2wcZEBCMGqsRU
	 xhcmmUCpBnrlzcftt23sVfOKLMSnRdNt4h0u/ut3cMDZsNM9XeQ8YVyViW7uFWeaI+
	 /7kldZnFiqlLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982D3D1A452
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872155360.4671.6532791036001338448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743f9f0948f8a24370564fccc44cc183f507e4fbb4efaaea1cfec49d4e220b59
Date: Sat, 12 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728721553
