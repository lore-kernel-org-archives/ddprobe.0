Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F7BD51D
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sq4s5FOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 849ABC433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699460896;
	bh=MzMQue4pBbESXrsnfdvxPfvyjMHyFtE4U6OYbo49SGA=;
	h=To:Subject:From:Date:From;
	b=Sq4s5FOIMvuGVvMLqYCjXRTtxWG/0KNY0ALqHAOONUfPNPdhEtvrDsS8KS4hZcsIP
	 lfoe3nlYMqCfac5vfHLbNXnYn4CV0P2VWyiA8YX4zfoniJmRKdEDQTZ858lB8exMDa
	 celGZzj4VQB2LRu+OAd7Z/OVbRIMC8RMGbXPKIDLBxJ11jKKDn+p5H+h7Ud4XlmAir
	 w+QCiZBNlwanj4YY/ONIJDUlZEkljhEba51m+o0gMXB0wFZAO+b5l9Oy0OEtszeboE
	 zTs9CH90vkkvZ8lSnzzmbPE2hGNRt5EtnIFkprgIyLmfhRCtXymf1A57qXpbLQ9/wG
	 WfYKi0x/YDeow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652EBC4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169946089640.9356.17457595157572849834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8315f6649e6fe9258495959f33922dfc3b4dc79396b0dd830dcbb1e2169bc2
Date: Wed, 08 Nov 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699460896
