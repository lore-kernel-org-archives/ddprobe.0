Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5367114267
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 19:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBE1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 19:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693252448;
	bh=PobDkTWSZl2f3jyM/7WBR09IAyKZ4dlolO31AMhKc9w=;
	h=To:Subject:From:Date:From;
	b=EAK4FTGd23BQND8qUu+05lRt0KEw01goI0HiOvqIpoXxREuoPSDXPIu0EDyn+Hd81
	 1r32XUEPGGrdvCeAzvvi/ngfb/wOrbrWppaHULxXrLglVxWplm31Xaqm0oCLsuedP8
	 IF7HIfcKSZjSX0PulF35KCt52qKIoYmB2zvYoH8kjwwMA2L/VxVmUuYn+n5fFhz/d9
	 4lvLeHgR/jPoOFpV+3+snskg9227bXGqCYofda6rq61tac8nqB5pCvCPZapzN/D0Zq
	 6CnNBx3c6ohpZecewrANpPvm+R92qfNIXBe3xMbYP9FWvvxnEdei+XuuWvPtU+dQcR
	 86yoBBMPsS8hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD688C71153
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 19:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169325244868.29716.11238429082643095990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3390cfdc3c423d3e900e3230961b26df41c53a3d625205363f8243753fee3f
Date: Mon, 28 Aug 2023 19:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693252448
