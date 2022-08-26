Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35523D6D
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC5CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661521252;
	bh=lD2UkIlZ2L9UjID2RAg/eNUwALDnV/8mxC9TIDqw4X8=;
	h=To:Subject:From:Date:From;
	b=ly4xx9lFK/pTpvTirEsj+zPyjXJumdCSYsDbpjPLVo5g4d0fg6qOSQdNquONf7dJG
	 w6fqsPt/3MpERJmlhYnpi4ZGZmcaeYG6Qt/sTWRQnTnZVV200lt+EguvyX3nJvNO1/
	 FwFR5F2V9kshg9B1PqHvmsaQF7T9zvdkmSfMG2WqvyrgVM//MSmzK/0G/d31Izi+mp
	 STnz6ihTm1YFMSI2MvHwmaKy8Bsyut7wfoY2QmHO5vp0Pi6Z1TLVmcnMpADCQsQAI1
	 OQG/mdy5cnPN28tKmhAyqSYo3b2Ug0KSc6Lyn/sGoGNdZ6H656nTfXTilzgEVz3yem
	 gVfG/GKa4X5pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D51ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152125232.1732.4231797637442146452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573ba46970bf84c412c2567045b7cb78d8392cf9722da4aa718b1cfc04258df4
Date: Fri, 26 Aug 2022 13:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661521252
