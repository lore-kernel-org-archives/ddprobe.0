Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3828BEC
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 17:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 045E8C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 17:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674580986;
	bh=vp4K4oWYE/GgPrUf7OYkh3O/b1H+Q/LFMnAyZT0bi84=;
	h=To:Subject:From:Date:From;
	b=iydF4fdqaC6qfhnq73pS7Y3pvfFLzB3KgCdzMNerI8q92WD8ydRSjjIX6kV8+R2Sz
	 h1tAcBpuA/QH8J8hHnwTU/wRutkypqUwCWWiphn8+6QA/S+P7a/Tbtrn4C14rAyn7M
	 e/ITSX4mJwCQAdh/XKCY2aJE3hp999HPuOnVssZFLhmw/RjjjTMXRwsJ1BIqM6GnOy
	 Tj/p2vuI35WakQgbBiYO4QmQDnieLwR443jtSq8uIVdAX6ipA7LzgGX05EhzvBamwi
	 d23si9M5qNOYrRR3lKJGa9U3wfLyjdPcDNJ14VS0Bl1qScRWfR/YjddfKgBPgCiqST
	 1XFOGDNJ79gvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D569AC54E94
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 17:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167458098585.985.10274377911171635201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b3f6abdd62fd8f22c10bf80cadb7bcf625db5a7902b2f8e878ee0ae685dda2
Date: Tue, 24 Jan 2023 17:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674580985
