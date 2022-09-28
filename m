Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFABF7B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7401AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664362853;
	bh=6MBNxm8kM4A/3Gcxajb0cx8TJYiTmmLg7GirTy0OSy8=;
	h=To:Subject:From:Date:From;
	b=jVddUeYrWFVZ754w34aITeGkCPTXsI3yyNH7WY/ThjhxHp0PUNz518CNT6I/KliAi
	 PrkfRLOE7d0fKZRLKmYPt/AWxPzmia/V7hm4SNwtYBYGaqEPtKQvjMnQ4pLPICx1dT
	 v1L4tDsWaTX4xx725FW59JtBgjpjpXb/a8wwDibHxOBBPRNDwNpm9E60eM8rYYJOW8
	 v7C27fR2/kfJ1FrcctOXEAWvQS51gOsUDk2pfVYoj3F2OkJPMicVqXRXGD9uFdIPJ1
	 7s8JRK2x+uBibq4HXZ1ToDiiaAYXTqzY1MYDFDPUOTwIC/7jKO8LPth3xLHfsc+Cgc
	 3iwUpX6Am8umQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57AA3C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166436285332.28912.11034699568667123540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1376f37d9b109a0385e41ff2d4c88eb66dfd3304a87b22c6fed77a77c1d19a0
Date: Wed, 28 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664362853
