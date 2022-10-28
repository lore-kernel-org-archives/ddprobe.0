Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61D91FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8D9C433B5
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666949454;
	bh=2E6g+N3R4INU83GfxmByw/PGjFQ3wswiEkZEEGL6Yw4=;
	h=To:Subject:From:Date:From;
	b=uQGddg1PY+BlChERMDhSZJU9aTOfhJLEXticTUa5h4Psz/fNRwM8sL4bm2ZV5R0qZ
	 31fKwfjkLize3iGa+vktwrTFZzdr71oAEIgQEMoOhtfh/B54MXef1u1LMAnGyK5uxG
	 p1nnmRCPTXQWgHR/GEdf2X1dFY8qPau9focz0bQ6P/4To+3LRbs2FnRCaIA0NYk4jt
	 x78EAeX5xuLQtDTv96Ed/y6WJiZ67epA+kJV2ntc42wFUb0Lb17XFHfcgjMCLHYes8
	 g3WARM2DrU4bgD9xxEzAfpeoaoHm/58PviKPEANOP/yhGgQsIjvlIgA7HU8Yjxx4CG
	 SCdtlGumtB5Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5107EC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694945432.27284.14328208793177768909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc221a8c091fab8682af5c5446d31c0174ab85b2d5dceaa888a4592a01855f0
Date: Fri, 28 Oct 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666949454
