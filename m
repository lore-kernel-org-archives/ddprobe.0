Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7A9A3C
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88735C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665981053;
	bh=q0XMmEIn2gR5drqGbFVZ540WFNi2sVsj4EPdbcZ1eMc=;
	h=To:Subject:From:Date:From;
	b=qjWMwT4nChEjN1CB5heEyvfdILHU8Ie/67vMZiS8H4Slea5IeLhE5MyThpml5F1AX
	 dYC5OC6trq41CnwBSCoJqe7E1lkIWtnOAVo/zNflNNECW6b9FbERKJI8nCAdUoL39z
	 WoljqcX+Sd/zRHECREdIxLNgac1mULleR2AykX8RufrDXzxexA91eIMlpMpZGT90t+
	 kHomuMXhLuDIP4se+apMy2PJLfMmXRoU9fpNxie8Jdwo/JArPyQxMcs8xY/Ukmxvx/
	 7XkvddHMq8V8/cq06h/SVLN5+kGm5zkXxcmZoqB7d1w6E/9T2Q9MsnNR+c49mm3tzB
	 DHw+2Ik0suxsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66CCEC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166598105339.25871.12616330409692520588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb8190e5d6cadf915dcbdb6942fed2869e3eb75adcfd55bc5af2471479a2f6e
Date: Mon, 17 Oct 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665981053
