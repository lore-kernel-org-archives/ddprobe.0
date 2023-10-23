Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A2716439
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqHqstdT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96CCAC433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698066496;
	bh=jMa12m0U2q37rVhGQrqv5wV/vh0rr1LKepr9+NYBulw=;
	h=To:Subject:From:Date:From;
	b=BqHqstdTjkUhx5uXnO/Vk75h/DAFiE7M/JFmdxCVJxgsa/zNO934WghBRTVV8K1ye
	 cc1RII5AyBIyKkPAx2mHDoIeDi7dMGqBDBOFZ42yeE3hRqNpG8RvpEI+y1aoD0Dbzb
	 sVqqDb5W/Rs/ojuA6PKITvKP5JtIxb1LiH5RfVPJauiXfQX9bpBqX0z8+NC0jJ0HM8
	 VDVTXrVo0mcePM/ZDUgtiIArMpemc0A/3E5vFb5b4n7zcxJ1tHvRdtZbv0r5bUCsZI
	 pJC6lgWmW6s57x5VRNvbxZ+BSbpKg1tvEU1vv6SnWPg9qguT8VbLmaDSP4tAb/S/ms
	 eQEKTJljQNtOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 791CBCDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169806649647.21073.3946379466101789293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a2fb125933b248c266eed91f37779660c6f8bb0ffab60106509ed97757652d
Date: Mon, 23 Oct 2023 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698066496
