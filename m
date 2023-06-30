Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF2EEC3
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 02:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF66C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 02:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688092388;
	bh=pC6034Bf2ljpjD0GIb/N0T1jJQzp7tiPykZnI1j6mAQ=;
	h=To:Subject:From:Date:From;
	b=F7l08v7cIb7+RS0zM+sJAbeQ5Gcy6I+QzG5jIMF2I62vmHWC6gMYEJvvKMqm7cUj5
	 /rOGYoW2wjl8dUaL+D4y1yBDKt4ywkb8R6+/ME/kLDXIB9yVcfHAJpvi5Wy9SGUrfm
	 gCKSwmOsnztmn5nOLsqVVrF4hmzfhYKUqna+h0t6zE6VIVagf0evjPjqs+eTrjH/8r
	 e4nUhqdE2R+JKJoQmKh0k2dJ9dqh5dg5p93grJLyDEJFv8hfYTbMEjLN+2bflcl+Tw
	 A5XT+XumH2YmZq2uS5WLy92ic3WSdiiJ/qrnSR3y6DEtMYXEs5AXFcSXBK1ItMITcc
	 /6cno1Rb96CcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D17EB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 02:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168809238873.23293.12969570229038357632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bfaed42b3659e12e1cb84dd8c7e86090fb15f8957f91a8b24a8b8ad9af03be
Date: Fri, 30 Jun 2023 02:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688092388
