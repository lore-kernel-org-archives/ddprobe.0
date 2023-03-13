Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC701FD0
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 08:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E6EC433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 08:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678694825;
	bh=bokE9th0MxGL/2a72vqbs3amoplbgEpdBGP+klFWo9g=;
	h=To:Subject:From:Date:From;
	b=PywCVUj66nMGDe4D2s/HhqbMTLAtuD7oN/j0zqmCej0GhKFsoLYfOAt+Z0rkMFnt2
	 e4EPmVXphyuBA59JTpus52QiEb+GseR9AFir9ICpJ3IgNn8bRkvqtl4DOj78Mz2uSl
	 sscfaMZ/U5RcFm5o+F7sMPMkeORhG/VP5ZbE61iRHeApjNkOSRefNlYetRE/lMenSi
	 +nMsh3fkNWtCSRuQvUBF4XFaVm0KRNWnPGAgIwJKEe1mHBwNktaP95GcmcWzrd8X7S
	 1wo9KqFX0UVdKZd9JraN6zM6xSaTwOKENwcegWRJ1s79oiwwxdMNsDMKfNyMBmprqg
	 3Hkv/C17Lezng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B688DC61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 08:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167869482574.29896.9124916906039149569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b34725a9ad7ddc38fd92f5b4dd0ebf9e45f202ffca355432d4780aa85d5b0a
Date: Mon, 13 Mar 2023 08:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678694825
