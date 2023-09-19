Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7282A36B09
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 17:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4210C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 17:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695143108;
	bh=Vfu6CPRWVZelvpUGoQ3bZYa5WrOU8V4nqKpvrXq8wcE=;
	h=To:Subject:From:Date:From;
	b=b8fyBZtVUg6qM9QSjCAWaro9wFsAiSWUOlrZJAyz/iqW8i6PajHhSPYLjAB7eb8XQ
	 JeRsX1YYnG15OytmYqEEIChhyT2MUIOX83k6QeGB6vicaJ7FhQtRAC/YXwB2Btl6Fu
	 sxWJk0EFxzbE99gb6Y+w/DgzGjGA+7P8XNthV4CTme9qv6wCceHSvjstasFWV+Gydl
	 B4SP3sqAnp1Xn2lhucbHwdn15Aj6XwA5o72pCUPbj43WorMvO5RnZewUOP2OaHscKJ
	 iLB2gIUd6UFpdwZwow/+fnEj1lLjd5tF2eLPhEGlFs/37HfTb/bBX+HruGoLjNT81J
	 OqAlRDdEtbnRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AEBCE79A9
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 17:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169514310872.21042.16223754669456893294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9128f43924e2d2f246dd6875f18f025a184da5592b696acb0205858e59a6951f
Date: Tue, 19 Sep 2023 17:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695143108
