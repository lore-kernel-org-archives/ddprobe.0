Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEEA715AC
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B5D9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663915853;
	bh=0Aa+djqBE4PGzedbs+SUYq9FNTm0B/Ffi31Thksu+lw=;
	h=To:Subject:From:Date:From;
	b=mkr3mYdAkhia4IpvUyfQ7zAx21Np7QqmwqezcOWoYB6dOYdCsvuTrGEZAsHZBzq1l
	 A6rHxY+5yraqKN6NxUxt8rv76/VfAWzaEInkWE247/cSWhBuBL90sS5TMi46wkZeua
	 j7+7N3IQ2k2SvA5avMzrjAtoa7oXjFJ9WcYfMmtD41WfJQcz9dsXBix91fjYhLF8Du
	 mj9TuCgIFHKCwhec76uc8T5+jkXAhUUd/r6Ov35UmIgyCU9gsLT1TKluHiRhpyEpbd
	 t+ll7+joEZkft/K4v/LS059HmJnKOnZyphZTnqPEOH4FfVL4We79nratozoYiJPVn4
	 VuWsO2+1T8+vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55203ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391585333.29901.2814244802722019848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ba7928e1517d5972fd0c44b7e8456b89b786206e9d62404717a4039ce54cd7
Date: Fri, 23 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663915853
