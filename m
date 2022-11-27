Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D925317C3
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED6FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669512054;
	bh=rFTHBsSIJcsHrGeR2B7DVJhThwskPdX2O7Cv0zTraik=;
	h=To:Subject:From:Date:From;
	b=E30W27YDXosa+BOnQRBNghgc+VBrbjj83pS0iiFmixNYcfs+E3WKk4mgeJYQ2+mIy
	 KojcuhY82T/UELaxLXZya79WKMeO2yHCqHJqc3NeOu+4cxO980QcUYZ0Nrd8vz1lZ3
	 FnXfT2h5que7p6Mg3UY4ns6XCTxWozVEzNUM3xOdRDBxxnjVS/p6+4Rp+6DvVUYgXP
	 ew0eJBwtXGr/HQ78rMY8kYft4u+Pf9EkslZdPbCJkiZuDS0OKmPJSR8CWf0oYWDgW6
	 2fF/TLoJ8/2K0UStvU5cCa4F0C6e4uOEnOTn1M6mGDDs9hvTQ/lA4rHicuT9crX1l8
	 V21XZkf7YRjlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51813C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951205432.8334.13588074524002094280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d360fb85651cd66d102851f52f0e722e9db20640e507ad8677347866924cb9a6
Date: Sun, 27 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669512054
