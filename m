Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA55A20E0
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89B61C433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672147887;
	bh=SkDvdXCSy0puIWKNxVX3GEmcFLsqSSvghUJLh8htem4=;
	h=To:Subject:From:Date:From;
	b=rAz7Q2oE3cq0D24jyK/XxE4mRTLkS080JpLjJRShrEUCtD4BVuG8xlAuzHEZDhr1D
	 jAa0fBw827fHDPqhbAO4sWCBEx2TXHgYxe7sW7c3hO5+66wV0GVWChraZHEWhE/XoE
	 ejY5H6cxdphMGfk3quHyyyq5I0Tv/e49t27zewHmcXDBn3EccjGYO59MG2yKGIlDem
	 vC7VT5pu9hjE2q/pu1EKne+nKwv+ux3u1Ewa0ebN69abAvI6VjPYWWuA/W8o6CC/Dc
	 Z59sDX00U2B/oEB7Gn+jg1vlnGLYa1ne533Oz3h28BHkMhp5Cz31CTPMqUF/dAx4kc
	 pV1wwso1KHsdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E56FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167214788741.6266.11913666529597900081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20494d890271270789de4d0a4f56fafdf0dae945a5e34a4245fbf75ba81c8131
Date: Tue, 27 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672147887
