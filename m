Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B3CEED2
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uli3ODlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 939AFC433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699458496;
	bh=5AciKHb2VQOCQFTg3TxShcyu5o8v/5dMKX0i6EZLMiU=;
	h=To:Subject:From:Date:From;
	b=Uli3ODlzvaij+z/f7MHCqhM4YTxzAAak0rEBmsiuxm1AzX5By9VJCaGKrE/gN+ISK
	 shrmDxQkLil02Ug2Bo1RYFrxUdROUkAdGVCSkwvtGNK8vPEMDL+mg8PPOIpgG/daiz
	 vkYhksFCw2RI6vKb/74U7VKtOzWiMMFeavA8mNBadfHpH/0Aae9eGbeVgRrrFfDLHq
	 0stt+LbkzVIFvF5hfmuhdYPQBGJEezpyPnhnEuzr47fISmzTtVE18bFhlMIJRzqhrF
	 2TuUNREDplemvJWgBtsS56UJmkSR995zA+XX7ZGckfFim+uFxR8N8KFy0yVB9YTDRr
	 /3T1lG+m7F/HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7074EC4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169945849645.18643.1074967175499737407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce742fa106013579bfbf73337dece2c3b99b2d1006e26655a8797c9298df6cc0
Date: Wed, 08 Nov 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699458496
