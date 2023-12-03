Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C007F5
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UorL3O0N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D0FDC433C9
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701575896;
	bh=lgTdzJ6Sp7xAKlc00n1CoEijEQ8wRRaaflzRC2PctLE=;
	h=To:Subject:From:Date:From;
	b=UorL3O0N0qonJkgf5bfooe6cUMHO3tOLuTO/J97WTn9HCcr5Veej1Afl38++gJI1c
	 iKRqikLTi/T9U9F8XqJeOgk7eMMoxhM8wjIuLvLkOsl0CPaBaNgqp8uyCI7iUisYcB
	 wdYlIJaZlIFDI7n5BQhX/nIYZrCkoi9mLWExKyCq1/t2ZcZYYMrOMH0sZ2c1Y/nSzO
	 5xJW31xZfqUlAfcgQaXInIn5j5vj/rlkOD3citQYEjmyAdHhfYltd9HeuEQFkmwnuV
	 zwnItS7owZRzruqXKZADLaA+uskrpA15gcIwOMgMleR3hn5ROY69DyMhQr9Q6NbGQM
	 IaOZCPty4yiLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D201C4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170157589641.24552.12714650111116535866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c3a059140aade36cd7bd8390554c1f647adbf572dba4d7a2a9e2ec000c469a
Date: Sun, 03 Dec 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701575896
