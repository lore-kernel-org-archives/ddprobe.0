Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413BB7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 06:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3A0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 06:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678517705;
	bh=IEqDZ5IlPDi/gRscDt/Y5Wdaz7dnVUpCBA1M8wNg9tI=;
	h=To:Subject:From:Date:From;
	b=EzttTV6kpvkXjI4gbL/VUV6KHKEOb4Cla34VDusJkcq0xwKF186VdeWO4ZBXY7WlJ
	 K8HYWxTf4XWgsRZjyI+YshQx48X2S4B7HWdAHTUHZhFIFG+hL5vOny+3ZmF2+T1OyJ
	 6pnFEaT9GuYQlANFHuD2wJE/zU2r+a8NtpJJd2xOdn6RQ8pHjLrkoAbHKS9hqYEGGe
	 0BeN/6+Urc+1vJjjf4R5g4tvaoi7dA2kJ+a/8N8vGhw1lTX2DUpZEiNz4GaPfYvGNL
	 JrxVLPd2TJMQaWjzXVfWkS9OTFhfgvPbQGAbLUVS1b3lPcPOtqg6cpDjh6Izhwg0G8
	 nP4Q25+qbwvHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD6FC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 06:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167851770575.17638.10991854013597748713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f4431670c3ef07d27f9c5695874f7e238ce7408e71f627c5421d9a706e5eae
Date: Sat, 11 Mar 2023 06:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678517705
