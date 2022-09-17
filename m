Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6041FBD
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB4EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663419653;
	bh=FglFsWw+CNAfu19VR3B2g76OKIqhPIohZ7xYQFvy0d8=;
	h=To:Subject:From:Date:From;
	b=Paeek7uhWJhfwyh2xMf/4zUsNDB/X5g5pLGkm/L54vlEo4havpDLgf2ZE5rvQsFb2
	 18LIl2AZzqhd/x1udL8Rv4LMcpYghjku+fpwziJps7M77TGq8VxWSZL8HSfer4g9wH
	 zdn/V/sKPtzjcJJx+iG13Ps3sZVSohElMsPNg5M9n8MM+WCr2Y03ALvp4HXcCezq+C
	 f0V0VPWgVDXwjNU7ymDcE0AWT+TfBPMBcIoE/Q80Ed8Hdb4ZC8c7+qOB3wuJyJVvD2
	 UAB67QbqzjFwGyb/cURVO1T3oND26GHyxhjetOWDwqMQ12BaiCQ9pbqSuiWbmhBteo
	 4pC6DZUMcHRnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B5BECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166341965332.977.16382474568994793275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ead2baab7dca06d071b606477a718f0ba7cb93e9bf9d5e7350d5c434c1f00f8
Date: Sat, 17 Sep 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663419653
