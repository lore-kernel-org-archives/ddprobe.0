Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEEA6FC7
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85FE3C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672269087;
	bh=rZT4kTvC6wn970CmTXtKUQFVJi+3Xd1W1cKxnGqbdGo=;
	h=To:Subject:From:Date:From;
	b=Ee2Z4olEejmzkjp68OkP8DBxBnNUDInnYx5GFXNaXiQW8ucRpT7fVqq2QfHty+Nwl
	 mfyZDCUGfwGgdPAX/rLy5HTrwkcFaJR2UkBWUoI76/p39a0Y8UNgHeFoStNz21RIsk
	 jxghO+E3uURUnfhAYMaDFeKnBCTc2Wx4Lx2Vp8SbWJnGBAl7CAxGuf2qaWJuCw8UJB
	 XuBmOuPQHj9WLQyIkLmkyL3Qvdv/rs+SXnZmOXWGPgvtUFKRH+zQEhou+32pOUBUst
	 oV8KDJcU9GOpgTZ1TLY63RBNtRJJtFLlS894CV3/RttF1GbR/z785uhzE/k0pMTB5Q
	 3A9Fs+1l8D+Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 698E1C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167226908742.13795.125175187105717052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e694d26dc57ce8d374c0560c90088302405a954be7e6303632a59fa7bb310179
Date: Wed, 28 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672269087
