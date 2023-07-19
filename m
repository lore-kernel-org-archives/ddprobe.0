Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BF61BB20
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 20:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EBCC433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 20:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689799928;
	bh=9UwclbWfxYjOc3f4UxDTdIQwrhkkQ7CHan5tMgwzzu8=;
	h=To:Subject:From:Date:From;
	b=OiMtOuNlE0pFkJUas/AP8EeO+pIUwh8sFlzAh2tsBHo5yLrshQx8bYvaP7OJv6iYG
	 nBh8htLXgfPpjJJ2fStFsgmTC0+RFp9FNV3ddkMA/9+nOtPQB4TYSI7TSpFgE3JHa2
	 09hMK6ax2gF6HPNXUi+nzekDvCXfrYMeFhN+CxYzf6Op5DdTifT3RjFLft7o9UYC9j
	 m7seF0wBobBJecW5b++zj/TZIU2YLofuERnQGmfSNiIGWVauTuvWFpH+S4RU05D5kj
	 AwmTchVB/6k8u3X+hrxA+T9gfJpKAtSg1N6G2zVsWSLnSG7RAsIS6U1YBdW97LLuT9
	 EC/jE4c2aEzVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BACA8C001DC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 20:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168979992875.8600.9200917756870684786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c445c485acb1460bd341c89769b68549bc1b24f00197de17729857a8e34033ed
Date: Wed, 19 Jul 2023 20:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689799928
