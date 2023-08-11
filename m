Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B1E7F1
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C61C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691718788;
	bh=uM3SKL++iApYuE8BD0nW4Zk977o6Z4p1lyVczGiXVEw=;
	h=To:Subject:From:Date:From;
	b=GmWxPG/5CcMOcZuCEJDuiSWMCUveXNdh3KE7lCscM4lypccNVp5rsh+A0pRIkMCpy
	 J2wHO2d8mYV0pxQw2WhZpe05HvX1HN334ZtHDH0IaODW8Dorq1KpxomgqepQLBX8Qf
	 GF1S1B7SBzoTSZ2P8aSyhKjC+HuBwZed75UrqBoxXLByzCgVRDBHQuSOo/IlBQp/LU
	 CRZoIezPyupqxEmCrYiEJi3Qn6Y/ZkYncYkAV+ycGZCUjun/2DQGx1PJqcG0pONENI
	 nyESriLD4y0EXg+jGjFI+MqMuOavS/zzw1/qjtLBBmFbDR5lSyjL4gShO1FySKPVHe
	 3K9nBeo6TzMJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D75C04A94
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169171878865.32101.525854462777281331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7046138be1bcd4ddd2a5d065c93905d00d608801de65fb193a62d41095428a
Date: Fri, 11 Aug 2023 01:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691718788
