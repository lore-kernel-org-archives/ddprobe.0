Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2079E48CC1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjvSnad1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B70FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704893296;
	bh=ZbtSq2tA9IUZMc3D9GX3mbKl6cWZsZ6EdIEUI1EpPAQ=;
	h=To:Subject:From:Date:From;
	b=fjvSnad1A7oOBy+llamgmKF2R1G4++kJlwh8apSUAGUYrfr+n+nVHiDwto0qhm2Zy
	 5EJK9G3IjUZg7I1dua/QrVWctxcyhc/PpgZ6WoQ8puyQO/2k9TaCHoPVYhlacEUzSl
	 k033vClnn159bnq9IORKmRPcfUp360CH2rp5Di/jo8WL1kVVGS3A8+NdqqDbEx3/5D
	 l6shZDbLvl0XFx1AW4NGIJ7HYbcQ2WyuiiPOmufoaypAz755HcRupJ1RhwwIs4NNHM
	 Jc57oBcwlU9t3ks1s2H5VulNCEk0tsSDkZNI6JgS8kY5WDuvBPWXxdk8AodXbyOQrE
	 Z+Tvd0yeiyVhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6019FC4707C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170489329638.17000.17048491370451007956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5578de2300be2554bafbe2a6b0407b41a5bdf30a3755ac858f9d5bc5416710e
Date: Wed, 10 Jan 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704893296
