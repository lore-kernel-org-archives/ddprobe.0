Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085F119444
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGIwD21b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 848A8C433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700418496;
	bh=tPVOiJP4Yng3y1ParGV+t3upB+5k7xzNDkXz5dnr6pA=;
	h=To:Subject:From:Date:From;
	b=HGIwD21bQ8s4G12TVQuNTFdK28bJlQvqCzQz+rybhTHTP4Nn49TL9uj07R3JGvlOE
	 Yb+Mnsh1o8tXPj8oCrr0E9q+v9dIDQYbcjgPK6UZ8CRH4HKvScrGD3CM4AikH0411/
	 ppJ9QUhlGQMErG5gI45fpJmCW0jPLUDm4I/PfFYyWdQYKDW75KBd8kdOtfeZIBAIQx
	 b4KkdSGFeuWEefwYPw7dFZI6O4H6GvOP6Xuf45PvKrdbt4dvOlk4g7PBYM7cw3qXAa
	 6LcVgFcek8RCO1Ifud0LcW9IFFjBESRzlJGtWrq+bV5GbeMWhkps69RozHeOEgqfo0
	 KYLB8/1Ow2y8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6776CC072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170041849641.3716.10927360997806494913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f571a408b55f136acb024631855d08f608d1e1d59168d414dc750433580f19
Date: Sun, 19 Nov 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700418496
