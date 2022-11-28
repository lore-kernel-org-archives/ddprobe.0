Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C794920E2
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74119C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669623054;
	bh=ZYv4ibu5cYMoJYizYUmrUneHl/SDhM9Jm2gjXQShn/k=;
	h=To:Subject:From:Date:From;
	b=WOYC7fIIddpNT27eM2rfauL29MxSEYSWoedba+nAV9cjjnCyakPLATRW2RH2ju7HE
	 ooJBlueH3W1vHNsxlQRuNpKWCtMKgfvxt9JUhRixcNhizIlxLOf550O2f5LwgxN9DK
	 XzDM/Gg1/xgHIJhEh67+qtw9PLafcMzr/hhDX3u8eeG39opjLH7NceT+AV5841ezUD
	 n5lCkaauJJrHipmzBGOeC3oqqbtUuWz/ONVIanJesACqGBF3vdfzU+LIS3zsNdz4tb
	 GOWsyGfqHGBr2KylrO1EVV/G8TB/PJUI1OWyqzFryFEs/SRYypdhIMqzxgVN+8UN26
	 qTGlIkdwhyutA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55775C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166962305434.4063.3864886277283075742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e72a969a7150bf7d01b0f2c3304465b76d4da420467af34ba3d7b0f61760df
Date: Mon, 28 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669623054
