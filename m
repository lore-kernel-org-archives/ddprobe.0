Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C2B1ACEAF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748980794; cv=none; b=ERyBu7MjA5Nvbtyu5DUzFMJvwW+4lpbO6/n4IeEPqDHluqKlT9SjPvDjYbswAZv+8PSiHyuLDY5cm1+slD14j79J/qbkQXHVpZAgO5FtHRrQC3W8UqtIE5jkDPmuffenHiRQq1nx/Xjs4AvOrW0cfjJklv1Fb8qjogi/p3Ouqy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748980794; c=relaxed/simple;
	bh=/czpvINjZTpO7h+/t2S8HLPUS8yNTHF9Y9kcr98t5kA=;
	h=To:Subject:From:Message-Id:Date; b=QqboPJLkfnbUNUc5JuQz3XKhq5Li+8Ow4ke7SDMulKpAf5egMG0hDhSSofQUkHSXwpo/Mqv5/b7GEdcaRmVTNueW8ds47lYEd5YDBBAHBTnZknmnMcDMQsRMz4J4WjS4ntYQSRdhq1BVnDiqx3g3E0XBxJmxv6NlxBd3u0vHK4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSSuZZfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSSuZZfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A285AC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748980793;
	bh=/czpvINjZTpO7h+/t2S8HLPUS8yNTHF9Y9kcr98t5kA=;
	h=To:Subject:From:Date:From;
	b=tSSuZZfyws3XYP3obP7iz+J/3nbyZ8jQmd+hwiOQH0hQ7+rtw3VNVetJuUz8gvlkP
	 8AoXxEs9HPNsbZNkrQNk6fivKVb6E5I//nFNx17qg26xxGJyZF1lq/75BHH2ImT8wd
	 ruR5sHTWvVtbJ7Pv1+p2Wlmsdv8Rx/VuKsyJ/J1PgfPyEE8qr9MZZOcwvTB6iy9CUg
	 XGKKK0Cd7jRFkB7eGgOvB69uZmOZHAP+BUKyP/osu8N5oiQu54I1onakbLcvTW/ALk
	 5qu8LI7einUww0CM9wyzdya3pxl1j7Hx+w4o42VoRNXKtKxYMvW+HBZglfG680AghX
	 l6SoeXYoyrcCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF20C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898079358.21342.1135613729593367027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cfd13eb82369a5fb787dd6580274ca87798051b5bf61e89ddc6a2cf65299aa
Date: Tue, 03 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748980793
