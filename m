Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8590C13AEF
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 21:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEA49C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 21:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688591829;
	bh=KitYTRHCbCNiAr1qhf0r3ZusB4dcHzRF7Y0eiq4IWNk=;
	h=To:Subject:From:Date:From;
	b=X3D/M5Hzr7vCdQmZTKurqrkfrmAoanrsYfvoCKlq/9bL1SjPFLLZMUPMAsXEanZNg
	 yPWf7UBeXyCLGsxAu5dhf65lCXLi4TAZsjhsArDXkP+PHlwL0RdlV9Rsrno07Or7rN
	 ElVIPntbQsWW80OuQOYG+sSxqssgMLpb3IkRojQNq4GniPE3JQ4rq5cp0makOfsS6b
	 l0XKB6tXcHKl2yMYL3vjwk3hYLRyjHAFs7Aj72+ZSygTia+iQ6QyIkxX/Z93tYcHr/
	 7uGASDnNUJiuoE04zW46MjQUxeO15t4sBaufWlYDuykwNVE39QrcgRtesWebt4NVuA
	 PpI63MNWFw+wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1AFEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 21:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168859182882.27303.3254776135398843045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452849427088355664ace8fee2da86996fd8e1acc2fb994314ce0cc9799b8b56
Date: Wed, 05 Jul 2023 21:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688591828
