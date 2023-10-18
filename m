Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE79335C2
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 13:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBjHF7Dl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E447BC433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 13:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697636892;
	bh=tu9OM05/0XHiQgtFaZHxhamPw2IcRx8cQnMpZ2N+rqA=;
	h=To:Subject:From:Date:From;
	b=SBjHF7DlISTOZ1zGB35uDI/OxKGUynsGC07kNXMINGJ31Dqvbm7njKh8qawPe283W
	 ArPbxpUaDGHcRpfVV443Wc1QCAA7SeTdmFlbSGL61T751rrTUCpbdgarepyGTR91GW
	 tUj1x9u/e0Qv+ck+LMR3OqEvuZhsiakKJFA3kNSA4otWoTPmmRxgyRKVGEt77zdayc
	 X5+5AwKuUCOwwSGJLddN52a8yin+d0TTv5xhej3bI1MO0CijGFUo24KnYT1pxUOZEo
	 9RILMaUpiXkhgktKK9vwgPmZyiFA+CLmqtv3B+rNSitGvIgaHbZgy5jHVHyXyoc8Yi
	 3k7K9lxfvT17A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F7CCDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 13:48:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169763689281.29923.7630590753047158992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf73993205cf059bb603308e4ca9d9397fe641118ee96cc9e10f8a9bd45420b
Date: Wed, 18 Oct 2023 13:48:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697636892
