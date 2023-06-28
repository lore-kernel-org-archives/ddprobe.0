Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F99C7E2
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3190C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687915988;
	bh=2WmfdW+3uLVOw5sLJIoHdF8+3TacCLDpCSwg565YHrM=;
	h=To:Subject:From:Date:From;
	b=IRgbGTtdLPZlpmf9zg+jgV2bJwKQS2F3oLlXV3j6YCLfhArvyfc1k63cALd3GClSS
	 W6bo6bxl/hDS/fdpuUdp9U3jMu3C0ul4FWlMD0pOQCfg0MJhNSuv5hIVPSDvWQjFkY
	 v+G7T4A25/2JmrVyadOgod7cIYLkXMqYfZiLcHn2EFWmfQNkUIrxtgY0orwnPlXpFO
	 FPou8+BSkCffgCkPxPo81hwSRSq5vK1DyFllfuGSyqChu19UzAprvjDPbFIFsf1kOK
	 hE0WOWCfruJ0MQBnrDTN+mikney56tosXA4q2Qn3Rgs81MEX2PXGY6RvaF9OU7FWTI
	 sINO9cioaghgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4436EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168791598872.3600.6938396237686004197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64acd6ebf08a5c67388ea200708c91e5d79686791c4fbc714fbcf1cb79491bcf
Date: Wed, 28 Jun 2023 01:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687915988
