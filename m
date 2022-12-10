Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D304A2CA6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B50CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670706687;
	bh=LJnPCBGICW9DR8kxupL4FDXOOCZ4/dVA9kpm9LhwHRo=;
	h=To:Subject:From:Date:From;
	b=MdEZYKxAbzaSKJ4wu5CfUyySB9EA5uBE2C7maKG4IXiXV4hmOiYPvqQ6WY3U4Jx+h
	 EVnbGmhKWj+8Mt6kTjptg6gy21mpySAGouzliSDe5O6+6rAOzpDUb1Sbt8CarRYUtw
	 xsyUeWtPV5Wq0qazzytjz4I0Q7mATFAW+RQ9H5At79TxpdhXWqhs18xrvOjGjwkql0
	 bvqn+bP4Gp3ja5VSnqcb2lz++2WPMWAImMcXaX4x0f0zzIfoVLsbweXuRgcNlI9Q1s
	 1pVRfb3Qbtixrk7z+KOUjnFT8s5PwrbtTsvpwueRZN3iM0Pz4Y4RkEZ48HAcVzDD9G
	 Clt2DKMlh6SYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F155C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070668738.27562.8542183046440270339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279432c602c0cfb4d0345f3590f83f9c8f8ee0cef427d26a1ee19028abe13045
Date: Sat, 10 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670706687
