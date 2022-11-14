Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67614C97
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 729A3C43470
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668437454;
	bh=blPZTUZuPmatSb4VFIlyW9I86Ddm049HPhy/6hloTxw=;
	h=To:Subject:From:Date:From;
	b=XvJegkwtRZE+DunGNLXM73WWtdXlvZQpsm/lDHlqExfiD1L97xXIPjlb2XIO+Spnt
	 Vjx9M3Zaz4IKYRgaagXpxGu6PmOUIAC8iUfS1fivqLeyVffQAuoBCaA23HIkH98+fg
	 geBeQrEROlg3PjcOElDzOcXiotm7C3foTnPMqoQqCqcIol+vQ2FhA6BS5UdDKLnBGD
	 IIwOA1V11WsBPCB/6L2YTMM2zxdhOKkhBsIXdIugeu75Wgmnd6aNzXx8oKZ6+U2crX
	 ec+7yoofOYNZe6w6uTrPU7Ql3oXfHlHAWDMcyD9e9+SSN9RKo4joaMePU7vlrfs4zV
	 NYn4HwpYxvyww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5281FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843745433.1883.14778217272118679605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01170afaf35d51f9a490bc5878b43eaa933042f15bb4f268d91ec1bc9754341f
Date: Mon, 14 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668437454
