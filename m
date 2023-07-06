Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4877B1111
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 07:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC97C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 07:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688629028;
	bh=YdQlg7PXjAQdU+VvKw3jvqQNHpnmoPIg1pO3dMYOZuA=;
	h=To:Subject:From:Date:From;
	b=f2+5gn58nOH43WMIhs7P3S++qu6hTkcttXLlW/2PuT4nqRBGgU8opM4D7Mrlud0IQ
	 ZuLclwrd48cAgXiYC199P2GC/RXINkzKzsyGx5rrjiHum5GprbpYTB0Rv8hy7Dyr7C
	 guBbdkKWy9CO7A3HS/uM/zvFby91BJo4rcQVJjukmeLiRu9B4E4ogfm+nT/yDe6ecB
	 LqpmG9S2g+fWFfDtZaB2ARjNdDWBgAVjghAutVBCMcRj58lpc755h0bT72E0/39Av1
	 Zc/UAz8qEG5tVJzUyGOEaX/8Q8eAmsOa62IXRXiFw6YWD2G09VkFKp2y+nP1Q02FqP
	 nq27eHyBY+taA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96D3EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 07:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168862902868.31492.15251853272420191191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4dc34121d7696dca3cde00386184a2ee78e08873184132f534156b99f2cacb
Date: Thu, 06 Jul 2023 07:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688629028
