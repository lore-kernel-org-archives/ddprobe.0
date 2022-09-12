Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26074C83
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 847C5C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663026653;
	bh=XcniEpJd9g3s2oqFaQetK8htcZaLhnrHDqTq4KDem4c=;
	h=To:Subject:From:Date:From;
	b=Uw0Db/fu+ghQam5KxMySRna2pv62YZPQDZCR4byjvSMNBPxlSOlhFjIlaOaYpVqJW
	 oLG4GsOzZa56qt4Z/iG0gOTnRnsECCChBznygsyuE1VM2HyAMInLhKEO/1GoMfCrdo
	 IYH8yzrzEPnmwSvOzxx/aA+R0WdYhMxF/+pT3JLM79JROJA/z8a/NlwJGuV3F4GMcJ
	 vhd/ZcfBYfXU1hKNu3UGpsgnOM8eJ54ZckeGc7bAKqCXyfNaTDxr2u2057dixIrYq0
	 LIYOzYaYALFtSqBsXqo+6AmoqMvhH31kJPMdY6shYf4d6aKn6vMgsUoxdc3b4W4yYF
	 vMVnvSpHoenBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A489C6FA83
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166302665342.14500.13954347461941823637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e223021c5590aa6b49ec416ce955a206d45d6ba78164a7e4e3d21dd61a2316b
Date: Mon, 12 Sep 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663026653
