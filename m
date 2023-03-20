Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366F26FA6
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 20:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9960C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 20:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679344025;
	bh=SHzhBzi0PUIV74UkpLZ1u9SME/uGHx1orOlr516DQck=;
	h=To:Subject:From:Date:From;
	b=XzC2YjVrWTtzOeKhs4Xr2Edy3cW7RU2Hd+fqZ9t9Y3/rKwvIfxNhbIv+ePqFcqeJt
	 TAfDTjWMhmrJ+yiYqp3PQUJW4NzH6SSPnBWPO42DZ30qjvHZnJqvvVVj4d0f5d+QEk
	 iWSxqIVJWIaRY2FP4NglyEdd3adkZSMGOy3xSfiPd1GsatJH0sAQ71WRtfm4zYUnNN
	 Yv1jSANsrS6TMejEOnCoV7XJbH2pFcd9QLEElSuHNNosA6DlDl/fgQgfoOQy2oPMOv
	 jLyDLbgnOYw3qUH3utGDMAJ/WZ+t61Oh2A0WZKkd4I73mCDNSsyCeOind63RAtPkC8
	 cH4ZXuRlb3r2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA866C6FD1C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 20:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167934402575.16251.432650950728096768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa10ede7b44fc2e8a599dfd020973e59c95b9df015c97c68461ef8b67f2ebe36
Date: Mon, 20 Mar 2023 20:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679344025
