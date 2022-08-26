Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C432F2E
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 798CBC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661527252;
	bh=R3KIxoIPXKLf/Wgu/CCJkytCvnXDgXVHcbEMKEAh7dg=;
	h=To:Subject:From:Date:From;
	b=tFBOx1lFcjcmCDVDZILPAWYKWisOzepke/Xh5TlMPE7Av/coHGOWJJQQPSWdGCVo6
	 A+v1X68NRbyG2mRV7G5M9Mbdqi5FDqe1AdmonQ3WHXCCaQM45Zk/c/MFgINPcyPdNl
	 ZTmXzGezpSxTJ845Di9FqPA9cX4k1pxeaLYCSePeeHbM6bwku8QlCLZhU572D0nEbE
	 AGu6C3rQIYLivv2/oDXl9S3w45Tnr3N1g1Fq1aumJNHZ0dB7tV3azwiMnUY+PBYO2V
	 pkhOBhlNtvnstwjT0dA00LFXDMU+vv7LdxmNCkK5H0MigF+JMPKZFhWxb0IfLHn9z0
	 ct4s4FwN5PEIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA00ECAAD5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 15:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152725237.5732.3168410197824472171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f7253c351605b27b828a1f2fc20c9610effbb6d8f4e3651fbc5862a1bcc5b7
Date: Fri, 26 Aug 2022 15:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661527252
