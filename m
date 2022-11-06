Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0426E1FAB
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 859BBC433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667703654;
	bh=+PX9Nvmydf81z/ru2sC0Wh/Y78tVcYAQLb55iRQEXlY=;
	h=To:Subject:From:Date:From;
	b=kz4bo7xpwF+2i8uqmdPXLv9Qk8c+doc8HbrocTC/8TjMRMbi2S3doEwZSm3p2zFj8
	 HGUf9OVa+hhKizQMVJjgcTPRcURDP5oM18+BuGl/rUBM5FKeZV7ZdzCFMSZL+bXzso
	 oN0eVsOtBkggir1yJ39d9oltAh5ZcEo2KFVAlSbLebaecXsqtSLs45LG6mRR2+5+iD
	 TkH1Uwm/n9pGoP1tUkwjNDEHRogXcT5vOOUCYaPh9n7eK/C96i8ggKEWuEWePnm1G4
	 DcKB+7MzUuL4z5X6gzWzFi0AR/PdRoe6tqSpBR4dwpAiJMbZTSdx5DtKY9oASshP5k
	 nJRNyu3ODQHag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6361AC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166770365437.2336.15336484747908744812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372ede6eb49a1cd38b07738daddd4e65785b9482264d8a4b25dee658d22dcf93
Date: Sun, 06 Nov 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667703654
