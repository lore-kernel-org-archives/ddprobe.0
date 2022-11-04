Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73B7AD56
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74640C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667599854;
	bh=vBN4cE/EltjJwnmZ6V7dY4BzHqla/fcT3hnwfGNVwD0=;
	h=To:Subject:From:Date:From;
	b=Gf1w3TXTsWqdaIg5xJrddf3iFfc10l6TNWL42KBjZBnAEPANblavoACcKxwueYEEL
	 LAbDTVmF94uP1KmVk7JBT7opRz5uzI8q7oJy0Ul9w8cItHVEWOtDsFr8LRZLXVahHU
	 EUcBWWj2lS54HhtvuCGrBi7JC2Kj2oV2aua6EiUjmw8ObN1Q1kIc9nanjek3FwX7yE
	 lTY9cBvw5b8Tu91P/KHfubwS2c1KxTQC4Bp9B3oVaItfN1JSY9pKi88sigFLBARDHq
	 RLUIxZkedBLdCwUEIw1ZYTCEiwRHNMKUfwM6ziOcjY7oTQ4mUqHIoSjgyHk4/vwxvA
	 nI0D9rTgQYpIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5769CC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166759985434.9608.6800378764953119825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88180f77a75a5235f2c0538868c616c271681333bd5d639f85adc655fbcea5e3
Date: Fri, 04 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667599854
