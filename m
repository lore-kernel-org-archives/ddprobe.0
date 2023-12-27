Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2082320E3
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6RC6xTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F8AFC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703645296;
	bh=z+NN6JRKYK67MQQWa9IsJyDdlXKdE5cWOMEbmu9o9kQ=;
	h=To:Subject:From:Date:From;
	b=h6RC6xTqyH+dKNic14hpUREDF+9+k4UMCN9+N6RvAbJOw2CzNQ547U7qO4MYQ3K8L
	 i6YSUHzKPl78VUhW5tshd4VJ1gfNpfl8TkrcY+Oc7ciX8FDjolu5yyigq3Ldau0Buq
	 hplhT/fZNrXq9hSKuvAggK9mLiYFs19Ss6VpwT2rNnPbrsN0dGySBG5MT2Vv+WeQIv
	 mbMDCkELMtYP5K67CeZ0li+JSZabz11POVBuEmEDrmnt13KGYvl03xUm4CUAMuhGN9
	 y3+1fxDeqZBsdgABpFCWnHFaznE2SwU/ZxL8ZOxAYU0ysVaHVyD+V9PwcJ0BCxCUdx
	 uBtLLyoZMnU4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70029C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170364529644.14976.17515013065351169590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21894accfbcec568045ce626a07ffb632ee9a03b617dd1fac795c337431af2ff
Date: Wed, 27 Dec 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703645296
