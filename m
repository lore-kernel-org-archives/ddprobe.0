Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360D719507
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 15:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9440C433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 15:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684422365;
	bh=9qldHMWFAQN0oG3TwAUWZDibl9aM2HDHZwDaUb+rhdA=;
	h=To:Subject:From:Date:From;
	b=bTxZzPynXn6Nxq/mP3R/P0uOi2pbFscNNAKVy3mM05ePovps3zgLvxKpJjfMT88YM
	 H+0J1bxfEB+GI9v2rPITOlcZXwMAYQVMLhbCA9sQTPji7wtNLLl8Vev2eoYdQ+5JZL
	 zOEDSCne8Cw0NhRxBSxLa3FSpZPs2T/1tc+oVEM1UiFu5BaHmn3Nx1Gfny2nW7JNgl
	 lsvh0DOe46/H4F3Ap8kF8dt74Ll/+pRQg2s65tZDfQcZch3av2i7SB9jjC1bVefoL+
	 JzPXnAcKfq5QMRP22E16Ggy4tr16VnK9zhAUgtF9vhLUVqAO533+645ZwNE0bjyO2X
	 8ulu8xK3CSE/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B809EC77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 15:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168442236574.4629.11213102707752691486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721a88b695acebd48337755c0880f2558dcf8d04c658e0815c6be0aab02e382b
Date: Thu, 18 May 2023 15:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684422365
