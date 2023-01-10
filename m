Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85A06FBB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5018C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673375487;
	bh=k0EJ9Kt2ezvoxPbUOs9OROaNHl7firJAwkDqOWQsk/E=;
	h=To:Subject:From:Date:From;
	b=s5hihSl+C221yNWZ1UjquHiYdjOItdVNeBHa0aGtgcnVHvtQLdnlp1vZUUXw2aXB5
	 P0QWYY9r7Gn9bWY5SKd11YgDfnDe0X9DC9OvoQXYxK7IXel5XsW2MXO5LFyleuf3ZC
	 FJ+JR87CUoHdg5wEdExQa71O/Geov3DB/BToyL3HDhp3HrN3PiWMkFWA0nHoYjKjeV
	 6Z+zo31RduzO43Mt8a9ZoOAML72wSXOI0v6D/WEqj9BBjaPeIptkMDzcFNZnIzp2bI
	 1D85Pzgo9/7ai544WJOWCGbBGprimAgj+wW0l7HEmvSwJGfoBm2oCfPbgQ5a0j17km
	 kq/+dbPDEnWhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 801E3C678DB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337548751.31998.16250093059970261848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82daf72ee357e633a77aa53a9c06b39933a441c1adaab166285c8336bdb303c2
Date: Tue, 10 Jan 2023 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673375487
