Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBCF191
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E54DC433B5
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668652854;
	bh=qIB1cU2E+c3pgXEH5MhJJHSF/gv8WelutE2Tc8dIz3U=;
	h=To:Subject:From:Date:From;
	b=GTtTDKhxBr6XI7niOc9T/DXY9ASsPf/1Hrf1Cz/WFTY4qX2tVRxrGTOmKPjwsGgQs
	 6jdYDc89/Of1i7XKewVuQnUrVw/eMzDqipYj+bpV361BfvQgkfp8At5EbsxGPj1/Cx
	 8pghht197cVezE7YMKHHGcx2XdWXqWHTHVlTj8HstVzOMDRcQnZwANTNDpGJ7vZQ8m
	 FDDGX7nJo62k3U2xE+fYYSMNn67MtmUPrX/FWrY0zMCL6vvRs5Wne4rT40Jhud87s3
	 VIW5v5p5/KdEyrP1If96/Cn+L/d9jFizDNz5Pyd3pH+ohh3OlZbCDi4/cf6qV3quEv
	 4xuRTRNspIUrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D3AFC433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166865285433.3267.15616863705094529993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd0153e561b597e5252cc185731d6e786fb3ee65c706578a89e29042343ec92
Date: Thu, 17 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668652854
