Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5034C81
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83DE6C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670800287;
	bh=ujYgTj6aYs8LRcQ9PUWOEFgeFoHkseYegrZu3viG7U4=;
	h=To:Subject:From:Date:From;
	b=WzuhG0Qa1jFFUoSlR4Je9rBAQr1MWsUOFlexCVKN25Ofd71iSPinP7/RTemmFIyTd
	 os8NzFFT8lZ3q45b7HNd5DW2KPIrF0VgPCxSspxWEBVrf5hyy2yjVZlwnUojxcIJHb
	 hxk4RJIJpP+FU+NFAP0Z5DMsPvcwCge5PSETdVFsyf8j4nU7WymAL9FqigcW6FKinW
	 XdHa0h0mcI4jrsKEEqDnnvRZbIk3EPdzk/UlhL1qvsKUROBzzVhBICmOzGsasDi7iO
	 npr0SQpyUbNdHEG5ArF4L3JaHsdvUZpsHDFvtRjBtlDo7ZTGGp+bwC8pUxsp08T+ms
	 TUzbOdVx1/CPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6336EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080028738.28316.10096151984630320992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc2a07ae7993aeb894c78732db12b7805538e6de56cf363a0d335efd286563e
Date: Sun, 11 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670800287
