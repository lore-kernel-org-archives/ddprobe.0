Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B10910A0D
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxtjWkpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88BF6C433C9
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699352296;
	bh=SLG+G31aWQ4A5QrLghDUc4uI9WkYUwyGixgMAazOpGQ=;
	h=To:Subject:From:Date:From;
	b=YxtjWkpV22AfRn4Rk1Ra9XIS+4rKA8Y/fcdAWkfbtizSH3vxqRVpdLEMjfxS51caa
	 H/BUc657qhR4A43OnVY+b1XIr1amFA6bBPBJQqT9tqnmnNaf2t15izwLS4bDrBWDAi
	 sH6OAxxnxz7pT3HYjmbIT8EQdjMevl0VoTNr9JfGoujP+bED4gZe6d/RLyYr/W4wmL
	 cTdzyMy/sHYfi2kAnN76M19MoQqVIlkStKsk/QOM9mIpm49q2Eb5hyKA7M19wnuTBy
	 ujvLsIpqQdDjProaLXwspxn9/6MStf/2k796SXgTyq1FNOLCyUf/8IzGpJtiSyLhv4
	 1WcXHx6VBy9yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9FFC4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169935229643.9975.1114850167382227052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d9aadc2733120eaba2647807db9ab54ab0eb0c82fbf4fb3a756743d2d548de7
Date: Tue, 07 Nov 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699352296
