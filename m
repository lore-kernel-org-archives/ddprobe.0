Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C5E19539F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771799694; cv=none; b=nq9yrp+5TYJRFtXHs9LIT7WEwHiHnJz0KFO3GoUlpHLrgLKZ+lqDBq/U7lOvZZSwFbls8Yo2B6m4TIyoeqzPqkYU1kfkQfJfG9IYR3Jap/XP2UPsvjeY0ARjN45Q64p8h2vfZKBl+yQiI01uGaVhNEVNgnkq5bKTMtfJLm8BTfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771799694; c=relaxed/simple;
	bh=uVpDtMhgVoKkhWE5IPRR8+mvmo9Uy/1x3Uga2oo1cKY=;
	h=To:Subject:From:Message-Id:Date; b=jEW2H1EQ+rMqLJnHyZ8PSbDqCnJjyq18arlqie9mtu014iwTA2s/T64jy5MEEtyeYzgp9s0gZF95bT5lanLKO7FrSrA5oR0T9dyqJIraYpxqsfLNcTNpzk0zhkLASe7nf20EkPx1ttOoWA3AvTxhWsALU7uPKoxZiS6vdztcJUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2eU9PFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2eU9PFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C75C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771799693;
	bh=uVpDtMhgVoKkhWE5IPRR8+mvmo9Uy/1x3Uga2oo1cKY=;
	h=To:Subject:From:Date:From;
	b=O2eU9PFDtvAfBzP9n7DqA4NKe572Ey5rc21yZ9KhW8PrTCnBFrep1cBFlLunZYPkE
	 Ut962ZybNqJukbo+gvwuOtOl6aHK41hqX0LdpmMZDZTLitpZtLq73qwB+dMQOB8Zxm
	 RozMsB2LrMe3UdjhnSOSHSdm+3HBp6w/re2RJpXF1cyE/Qjun7O40y+l3/cpvndhO1
	 9xfv0375yj6tt0RWTcJnluKqgvhCmxtog/mrvd2vtE8+4U++XMhkECzFNp8HCzkaNm
	 vv7QcySpjUuMq3rIIadh/5heejsAexMO4T2wao6nf8GGz/HdzCXbTjUoy5/aCpDCmJ
	 nLu9/1RKXjltg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEBDC636C1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179969358.29774.473914534193573202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a4ea9f943c704965926e4551e41c6c8c86922c6064cd184b2f034481fe1574
Date: Sun, 22 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771799693
