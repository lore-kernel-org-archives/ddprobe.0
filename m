Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73BE8F68
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87A2FC433F0
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670526687;
	bh=aUEbTzNHdr8WgCk863kci/ngNFOpRDBzZy3b7v5Nut0=;
	h=To:Subject:From:Date:From;
	b=cp82eXXVRYKHm9lpIXVEIuOr+6gGPS0/1iR9HGx32NFq/FAzmGPGcy5kD2zcAxCfw
	 G1/XNbChd2fURfNoxJ3lsVsUilJVlPS4rKSz9QPtbnQSXXtfBbLN63AM8nSqpvo28g
	 6b4TexHA75r891oOABetpE0FUmT380TiUfWo5TBb4Ph1H2sFiPn8p+CKvFqihDMIeO
	 KAyrSVk1TYV9hQOYr+3xcnPyWxcFImvj2LCL6SK1I+QX5Olh7JJ0j4JN0XIoQnN/ZX
	 Bift+7/3tY4UDQ2B8NkGsFu8ILUqMz3xSC9nh7DYUxmnra78I+/BdAlE+V7K+STO6F
	 0rAi1cGP9SnBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8D2C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167052668743.9080.2247519175579842826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ab8e57f216543f521a6b650711ed09b307196d90a625976a78b3c992921af7
Date: Thu, 08 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670526687
