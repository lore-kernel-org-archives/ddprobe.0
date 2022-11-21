Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE1C6FA6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C766C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669052454;
	bh=vdhM3VwzJXKTKy+q7zeS/K+1taRZwJesmXbq7C9KxJU=;
	h=To:Subject:From:Date:From;
	b=oHs6A8Z9QfuT5ViHXrbLGVTIfqxTHssP1MQSatbawoAnnNVe+bUCrvI6T4pmQIeaD
	 C+jJADe5LH3IX6BP3ZmKjGEvU+7eElFcQFtx6Sbei3L0hr5PJPvWCG9f3m1z0/rTQb
	 yzzjp9QThaHbidXwjggcrw2OomgCdA5T1miUGU12rwso86CKjf8Zd8ipmgPMaySF1q
	 43klNXvfb5KinxegR78uouSdtk7pZ31YEVxrehISbQ9flW0KNxA90+mK/BeuOgBdE8
	 DYz14fvIEV1LC0gEy3RwLQXG1gAMRDWVK1RNp9vUHbE8E+1K2YOZ0CoasGko4FdfEv
	 LCrCySxhCIUBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55226C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166905245433.6046.16483931263883673866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9915c6e04617299867a34b081f838b3dba2c8de37ba2e06c2e0ccf15d5faaf70
Date: Mon, 21 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669052454
