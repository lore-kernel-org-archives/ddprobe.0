Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462AF28FC
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 12:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9070C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 12:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679489345;
	bh=0bfw0GXVJQD/tmb5F6sHB7x/3mYs3GMwYYDbOvXXPx8=;
	h=To:Subject:From:Date:From;
	b=EEguC4SNBLIa4tNyXIbGAIJlpDSndpIALxLtcc0ne9LIrO3QckBu5sHmga7KgczCz
	 N9Q9yK93KnlWGC02rF3ewabvVu6L8+6nX0HDDHvkUmZ/MgPXZa8g7LgDQXGs4LH7U1
	 SGoGc1qcQANUGITTVgf1NmDjQPNOzO4DTwtvuPHzEndNADCemyCqcBJM69iRoEuEvV
	 qxiqtNTv9mCY1FwOYazP8oaD0KUoI2Y1x7w6iYBXfW9hKFE9RxvyNYNcBS/r3hmyMc
	 +MK87OUQb1xQBPf+4Pfr88/f6q272Lz4CPum37Hd1fgVGuzAsbWV5zVPgmL4W/f3rD
	 r8rizyAgpIBNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB84C6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 12:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167948934576.20023.14410647872682162266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f0d46a8fa083191b6426517468edd20c9f5156d34f51be777e9571dbe3b388
Date: Wed, 22 Mar 2023 12:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679489345
