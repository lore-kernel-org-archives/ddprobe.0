Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59897E0
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F47CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670656287;
	bh=EQ/5usX++3mmuQjYU4AH49M/Pi8SwTZ+1z/CoFlGKRA=;
	h=To:Subject:From:Date:From;
	b=Cv6C8upGfx6QiobgxnSEO0tHnxtwzIDVh9xKDRBWDyIaiR6eQKpmx3JtCjmIs3kfY
	 8f8LEWZeuubbmaA7tjwexACJ36se7IyoEcUiagkKRTzSQgXtVrVvs6ULHbVCy4hrPR
	 I0fdUIIkkXTYZT8Hmb7d7Ryd8OcB5RPmDB8GAnJp9E6XBstUog6hk++lAETcTCCHYY
	 J55ZPAwiVN0CG4IE2jgDl22uRmBW7B9b6LaiOtLxsfAr4eBygr4eFred0S83yOVfGc
	 PGgMP8BPKo6HnSmH6RWFi619I7VOQ7tSM7IiAmSDokbOTCv8NA4otnmJZZ432Cu4mR
	 HU3BR3VQLh+Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AD6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065628739.5968.12295477820817336873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40050f42152a827ceb46028c27fdaf06f7064b849e1f8d5b348e27a0450d7e8b
Date: Sat, 10 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670656287
