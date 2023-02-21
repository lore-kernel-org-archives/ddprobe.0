Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539C410F6
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 06:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 020F8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 06:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676960946;
	bh=voOFmNMS9QMGY4ka6vfsQRRVivQ9+QkufPWz+BjNDgY=;
	h=To:Subject:From:Date:From;
	b=b/97u8sNI0e2yZsC1zbzAAkKWjeDcau/goCQqwDUY7HpHXTrnMmLYScioQQwQGgRb
	 +KwHWbrCtPlmiEWSaKGd02LWcjb26CASMXiuO9WNQT9hsqaWJkRhYPogvtETRSDH1L
	 jbiUky2k1opiT9F95+3ldT+1CENwK6gUHqlfzVj3quGqmwWtwCWeYcUowM68zoIhlH
	 7HTsX053bhhquyEvfYpan67xTAYrufrlcImxR+zMgPXmeXtJvuOIZVhXI7pFO7OI1R
	 L1VMYPAYwIxJzOw4Y6fgGpSCdttoyxJ1msU3CJEO2ZvppgdEDg2dUeN31RcafsCsUn
	 Ux3WL3dw99O3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7F4CC61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 06:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167696094586.13840.8840762707439332413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710ef7c75ffc3094665575cb7dd3f4a039d076d5db974c713bb4827c420af8e9
Date: Tue, 21 Feb 2023 06:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676960945
