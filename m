Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5384C87
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73873C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665173453;
	bh=vHoJIkT6q/rcaVgCje0hTLFsfsFXFY+S1IHUxh8Yl1Y=;
	h=To:Subject:From:Date:From;
	b=ksFkapLlpChcu8AB4/F2G+vKPeRckWja7R1jEuscyhiukUFYI42svKF1b5M4dBUJ8
	 N2aeU7qZkCHzUd4cKt+xpckcwiqfMKpQ1y2QIPdZj/4fFa841XACHyUgZPU0Sy8jL/
	 TeI0qmxiFnSkHTLmMgRpyKJDUKtCqKHMiQyWDPjm9E9buy3uiV3IhGM/dw98gPIqPb
	 bgtLrVhXIsoFpxNT1K61TXqWT74ys1cQd84HzAzJcXInoerIz0JgFb2EHUoccWytC3
	 ZhZk41aNWgvx1B7Qkz6KTI7dNqfkN64qUwoQqukOWC0bitYV7vSJi0d3SlkhysAmC7
	 0GfW8VgZeP5FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF09C4332F
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166517345333.8377.1979303254181802679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aad03e6753f784bf553d1be5b3940cf8b5afda59225532cf2f86a5e00ec2c60
Date: Fri, 07 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665173453
