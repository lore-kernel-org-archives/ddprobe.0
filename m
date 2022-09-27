Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF359645
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67C97C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664258453;
	bh=Gsm0I2Lp6ny+QjxIXu3We5kflqPKRQe51vu46pbqISI=;
	h=To:Subject:From:Date:From;
	b=MKaNcTpy1uMB10BDLz7yHLcpcnTKTtslCCr3jM5m6bpT/VkKonDydaHE6QfBiOYw6
	 W6aQNG7Qe1hlyi5lG3/245/Nsw1VpQTL67DQmS1IfolUqQbFOhWA/L3HKqi/Z712hj
	 9rIY5uLGsQ8TsowLvF3NJhMvCCi0fDdLWwimzdn004gO74TeS1FfpFOoJDRvi2cov4
	 caTfZqvbL08nrkqEkJ6V65KFwT14jo9MYZ1mmmPkMR2VWDB1SuGfz2PluQbyt2LnNj
	 d6EyYQHqwGl5ob19XaWFzL4L7SEhJvzbiIaXDiwk3Fc7gx56a40R6A+WTe2aCcgs1a
	 opeqUXCttPyAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E2C7C6FA83
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166425845331.7171.3484214872656210839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc85ce27d13978e7822047ba7d5e214a4340c45a02fc529ed7c0e0e7a773c071
Date: Tue, 27 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664258453
