Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0601363
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 698E0C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664499653;
	bh=vBfz++7PCPu2xxdisn89lctGRv6aqe9p6Ge12eyvcOI=;
	h=To:Subject:From:Date:From;
	b=dfyjia+zZLPB1fcTek+VFO/rkeaJ56dul/iu3E4BCHY9EpYSTc9fQqEXTYTKggwAa
	 TvbSbqJ1XB/eWs7oW+6/p+Tx39XtJPBzbUMgDt3PtfSrs2a3d7a2pQW9h2+ARIkv2e
	 YOpGUggyUjgvkuTv7A/r3CA4k06YF4CDQPaACabA2dJ3KBw0nRP5gHA8IY+ub0wbDK
	 yxBCZwuLx1s9I43ccQgJraCI7i9FCA0YaFskz31WWjLSjvJRusqNyFBZe7De84n2sH
	 9BYAHcoaWruB9P2prDmg96ldYWyWsFdyzFy7KYZeyIpZq3G5CigH6X9Q3BbacZ6O04
	 e1Oowbvk/a5FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F59C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166449965332.14413.10465902992743145190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46d9059f85d4a619d4c759d5e191a03763ad9882284dc220e76954dfad8a7d9b
Date: Fri, 30 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664499653
