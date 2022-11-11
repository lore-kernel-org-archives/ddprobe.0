Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCCE62F3F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CCEC433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668170454;
	bh=R40cVHbCZA26BqhZdzWqMn+lkBwljC8+l9fDjGODAxI=;
	h=To:Subject:From:Date:From;
	b=JCRVOkms225wALLyv/Yq/MqW3UvCjQj2guT6nIjN+HMtuiHq2XTvnKv49QEpRkKy8
	 xetK/UVIymdyjBaVkaGszeipxHIU3tmJYZT1oemAw165UGHxy1Tolxi2T8x2kY42Fv
	 TsiX9aEQnRUa4VoS6J9nA1d/v6RvDEO8w/UAiB/C3yxmvE1xPQWz2dWCzkh6LeMbzd
	 boIxMdP48OH89lOGdQNFlVdEhJ2GJp2KcdWYhMzu45vBIa3wFcTUeWnbyPJ+6e3/Co
	 x/p9qkbPuaFyPHUfUMQ3MW6tEwOovzs3Lw40OULnzGJsKVCBLJ2dE0aE4wOy5tf9G1
	 GWj+OElDQ+zQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54675C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166817045433.17642.3583123552818184418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed905ff7883558219f0328d784d66acafb394fbf65a92bc965bea5a1da86f2b4
Date: Fri, 11 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668170454
