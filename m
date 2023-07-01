Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F17E3C3E
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 17:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF76BC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 17:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688232248;
	bh=a4N0kNCQmi+b4t5lI+bkuNT0VWBBtBlWXlBzhCbnMck=;
	h=To:Subject:From:Date:From;
	b=G/iohe5IcwF65SSv4qjzaMyBh7D4fACHZXWCN2DagouPctgIKNZV77lVbJeuxJnBI
	 /MOqUOxMPPvIQVBAOA0T6x+8t984DRFtihJdBSTRoLLCOJyIelOTH98IJqAivHL0jW
	 +WAFSXc6oL9MkV5wqNwHumFse/Xv6vDmO+RweteHHXHZl737d5VBgGLKQTw/MLar7Y
	 3FkwId+Ty3PY2sgxB3iEWSXL7fkgdgIu4aShv8LdYsocUa/QI5iPVNWBuugn7VN2sX
	 e6Rrxuj+qh33/MHgxdz5uRD5s3r6q0zPBQQXzjbh0fn4+FrhdfQ5GCcXtp2saTB792
	 TPdVKPyoID0Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12B2EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 17:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168823224869.16582.7960802971875097777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b6da96caed80ff185844c583572e0102045bc64a782d8700a06c2e4a3eea4e
Date: Sat, 01 Jul 2023 17:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688232248
