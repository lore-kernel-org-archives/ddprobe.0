Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47984401
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F86C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661533852;
	bh=glPeHrLH29mGwwLMrDfJrdlMuixNhW/0pA6PX04mHDM=;
	h=To:Subject:From:Date:From;
	b=PFWBpry7mLgPFbai6km3QWNfjoVvYX4dicyevnLbEZ05JOhwrLksQ0/HSIjAUMSu1
	 lyrI4Ogq40tCZQgI7BKf4luJEw3xgRvyFziIdWt/FNJHKNt2jBYUaiijJdB2G2yu7c
	 uFltbQrrhoGH1LA/hwydLJDiAYIMpF2NuSztK1HXsTYPKz0xeArAyPUXr4+3D5rqxA
	 YkoV+MJ74qmVj3fp9xWkwoN+gzVjJ4JA3huYX4PYXtnWrhxKNufybEgRUGs0u4Tf3H
	 Bb2Ly0M1iSF9o3NOwOI/4hFVMN/uTPl1bmBwEXpG0X8ofHajxQIG6gXsmmzNjEoPWL
	 9n0Hr279qWM6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5235BECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153385232.26277.11142662433707496675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb92cce4ca0872744bd2dc99d5b763f313480a5c4008f3d3f9338ad552a6d90e
Date: Fri, 26 Aug 2022 17:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661533852
