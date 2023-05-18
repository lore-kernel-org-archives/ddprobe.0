Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238833FF4
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 14:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06FAC433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 14:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684419365;
	bh=ohvWim+O7uMA1v/rFK+uDcpsxDNsQDBegmGmZxRTZX0=;
	h=To:Subject:From:Date:From;
	b=u1h1WOMm+9UzteQwLlo7qeTFywMIHROSNqN/WRl5KdX2798i7JdY1E5kr4o/uHuFa
	 3EbqolSvyTeFO3w8a2pV6CYEAzNO44lQT5tSaa7pkoHoWEMmRvUpiHxH45Z9YDWsuQ
	 5FUBlz1aXoML1Ub9s9gofKlaO5ssukyUS/cozHurh+iAOV4iutOwtjytsfof6u7Dsj
	 /yc2HfC6mM8CMP+TIvC7dyoAsqbuTFUsyBwMYODbrI20Uuk7xJTN7SkQ8XmPVplL9V
	 kc/rKF67WL8Gh6kk5o/JCbv+cG8uJZ6rG2aESYe+IL6BQSEme+2v6RiIp8d+YO373l
	 pBxtbxuPzzW0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27ADC77B7A
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 14:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168441936572.25050.8820018266025455107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8be741891c6bdf6a37f7cf19d8582602c3f758fc61c29adaa09b672e9edd253
Date: Thu, 18 May 2023 14:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684419365
