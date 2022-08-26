Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50A04C94
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD6CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661547652;
	bh=ZLJOfdzzEkPtN98WzeVBtXxDqK63PptX3EERCvTQohI=;
	h=To:Subject:From:Date:From;
	b=L6zsjvldID6cD+r7+A9PzPyt3VGq3sYKO1q8onLyHx2qsRh1iBgi4qx8fwCAR4bAL
	 JWZBAYQXW/bngeM+e6/7o2QM566xRUBZhro1pW0X+R/Xf26wavXL52tiTdxr8B7X8c
	 FlC62myTGUjq6d17svGNqCd1UVEf5Z6kb9bW7hJEtyMyJtNqf05cwE+l1QpPzhtFbb
	 fgdBbJ5R057D0Dn35fkmxht7veqvSqmvINqY+pKhT82FxzE+wi1lSxAy8NOYHL4HNJ
	 AFXAEcSiQjvirqCidX6dxhThZ+LSAM8TzFCdhkNCLFU1UVFJnK3lG9sUptMm4g5DeC
	 ezGu1pVtrtwZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605ACECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154765238.15986.9883748489399264672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3188a0f71919702ac39135ee3bb4c060c3e7ac7dd02cc7cb4616dbd59cc2fff
Date: Fri, 26 Aug 2022 21:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661547652
