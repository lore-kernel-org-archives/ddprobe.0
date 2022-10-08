Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA02D7E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B00C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665235253;
	bh=mQd+NRtBSMIfxzLnvf2LwQPim9JccODXzXFXDmtLus4=;
	h=To:Subject:From:Date:From;
	b=qndxfTxbMKsdi1LYiM/odgnphwv/IvP9KTERHj/Mv3dDSMo4HLxVeVQpo305g5JWI
	 tJzQGGJV8whYQHmIyUXoSbQismiUp3CRzexfJyNb2q10rWIRCAk7ycfW2l+rs0nc19
	 nzbzhKrIryQV+sdzTC23rSJzeLZzyKUjvVx4dQ++UcgZvsv+GuT/dJembKkaCPSd/u
	 4KRGQ259FYiquqjNXogooZSC9muGLOqFVOM/o//5hZJ+qSRuP8D+T20K34rPBuWRuM
	 EEwjTM0rH6S2LBWCSpkSNWwx0Ql6kab+HEIg1eBmrBEp1x0o26b4im4Zr/tLR4HwHX
	 bxF/EKDo61Rbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F8DBC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166523525331.29845.8201607720935546428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a884320e0550875a94f590991a56f2a7eb3130b1d6147f7580170dba9f7cca69
Date: Sat, 08 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665235253
