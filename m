Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B41712B90
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 06:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F7AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 06:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684824185;
	bh=525hbUhZZMF63UmwpgA4J3zmBBHBuNsvJeiYSO+rCOU=;
	h=To:Subject:From:Date:From;
	b=cbSgCJdTMrZ+JJcJc92BTZ5nTybb5IqUFQ3qNqo5EfAgZ9V8hVmMZnhmwHz6PjFWG
	 +bHqjHv8qe514y1bKHjLVjnsJXDUjoD8ZFceLPqG6XAYydpWQuOdJrXvp0hmaDx2Kk
	 Sl7CHTNaRgrZQ+tTHy2786nMojrd3OH2Qzd8g1KH45hjVs1mliMcTR0TTpcE/OHuyq
	 n+DuK8O+YMsrI7VBovKqd9DI8GAr6hn22DfKZdjmrBSrqiIV3dggUrQqLS5uE1rixs
	 Zi8fZKlJbr0Xu5h3DHkHWiVmiCUnbMfHfbwP/4jkGzyDRvktflxRF5xyRBsAgS7Dw9
	 vccCdpDAwb5+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B797EC77B75
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 06:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168482418574.8500.4398216506589270098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 006cec7ae3400333464e83bc044ace08a2453950db1b68557ba7a58cc1a5ce68
Date: Tue, 23 May 2023 06:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684824185
