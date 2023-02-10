Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491C38483
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 20:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E944AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 20:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676060045;
	bh=UBMGQg0XCurcQ3v0hm992yoVcnb26kffgYworkydFQQ=;
	h=To:Subject:From:Date:From;
	b=qjKf6ze8NU3rSRRPCxR6hvh24Vgw4qTTy3ipe0i3ZEBtyMJsuQMJmg3EgM49br0tb
	 3Sc2d8MWAN7AYO9iLGjOzYC+/yzirJUGiSfLzD8lBbj93gZ5/zE3mGXmq8BAqVdjAD
	 /VK5Uq9WWOzgwLc/B2YRQ+C0DxWjiKkebkXY1vg0YTO0SUtLYUzatVbv/SPCXfkbC1
	 Hfact3B1NP8IKZByP9YX5xRv9l13wAlpTdbHbuqOzAXOFc0858ucL0Fwp2ZJHZHXno
	 Qfg9MIFCwRzBcBlGNVDo5qzi/aYWp/qjSPtZCOecPBDkxd9NkF+qAtU0jfuLhIgRhg
	 Ps91OVm3X0IMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C692BC636D4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 20:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167606004580.14912.3356858755714866315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc7082ed8c0b779528ff2d03906eb82d1c93831b605e1e9681e03177983d80f
Date: Fri, 10 Feb 2023 20:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676060045
