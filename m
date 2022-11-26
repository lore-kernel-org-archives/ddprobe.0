Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D531E17CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 770DAC433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669448454;
	bh=6Y+i22Iw916Ecp6eWTv4jtMhw4Z/BqclB8q8YhogdQA=;
	h=To:Subject:From:Date:From;
	b=Z03/uq1cCXhSlYM/ugTFyOSBL9ntEvu4Qe04EYXaObalkoigufhG/Mq7rr8M+83Pd
	 WVGKhyxiadFpa8HVtd2fKlJJMWZWwD8WFgJsTJGxPdTeKd/9S1N7/De6nEfAR28/o7
	 EyRXZsa1sgdVwC6fYKUb4nCQwYEgaGm60reQzLfDNHrcbTWr47VOE3eO7wFHst6lnu
	 ydsjkTEM6m/spSxLN/qOSIWi+TD0p+1IntTVi4AlJpVmLHw7SX25ekLGjbQP/204bp
	 HUQmI6nTNoo/LOSzOdlxP1gZGpgtARIMdE14yRQVasBdj4HS6y5Fp3kh+n4RVaxV8c
	 4jEk2EK/+o1pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6B3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944845433.21915.10121952128059836160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76cda02281881dd0cf1e444f22996f35a2d38793fa5cb249c0e61aff3ffc025
Date: Sat, 26 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669448454
