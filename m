Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B60A94F
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 20:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC390C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673382087;
	bh=ma7LNomQxzW5f61UOfigO5xe+842pxgX8ak3MmTyeUY=;
	h=To:Subject:From:Date:From;
	b=OcEOtyxu+V0XkMNiANsuFlY1va4+AACiVtv6Yx4huHsAU6u1CIvm23ZGifRUaRigm
	 3QQLXQvS3zoCYxfRbVxM++Z+V2W0jVt2jrChJCwy/Jia+/FnwfYLGxFFeI+9pc87cu
	 cnnfff+xROeQXBM08FW4cKlfkoJy7sz8g9aTZhXCrFk5fBg3TRTUCyeIr9qdCM/yph
	 wyiGImJa4RvBHTAbfmlyz21O0Fhl8w09eWWVMrilX59hvCfG9kIhK0B7mGBrMB0+PT
	 lkAZW5ngdt7IqnhQAEcGkRcTrKAN40vQsJjyJvRTzogd6AngEdQnN7qtg4bhlDJNcD
	 Fzc5IWFk855jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9085C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167338208766.16426.11537599975480588661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb58eba1f403985b2c6833151739890fcb23286f23e47fbd91331fdc87614cb
Date: Tue, 10 Jan 2023 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673382087
