Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC021FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 22:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D62C433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 22:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693263248;
	bh=zKGFgO1db9jXVV2Wh0AQwumkkome0kIU8KL4+7Dqs0I=;
	h=To:Subject:From:Date:From;
	b=erXO+7eTzcxZ9K72dfP+reigLXGemjXZ8TKEGHuYp1P2D9aEXAhuyjjcDyj1Tc697
	 xjrJUZGmz47QzeyniR6Xu5yxEJcS3sPYDzrb3RM4zK8OftOx9/PW74tx9OMcpVT/8c
	 KYQmyH0dSpTyuqQabViFU9upAMQ9NOwAlGvkeHtUjV2H6gjkLXebV7iw03PGFpJ/On
	 u/6ou90dDexDPEg27Nyyghc2PTbSIytVZYp3sx5pOdvtEcsSCUOJmUCT0Jebkf4nCJ
	 WEJlebvi2pe2fOZQC05keQtpTwXdrHrCFsrzcrGDD1QM9dgICwRzBfXG+F0JduOmWa
	 hNP+WmKlE0zhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B603BC83F12
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 22:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169326324873.18971.15660855168589094614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a075f01270cc4da3ec905291313b682cd1dbb87b98ff6628f13da38c573cdea6
Date: Mon, 28 Aug 2023 22:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693263248
