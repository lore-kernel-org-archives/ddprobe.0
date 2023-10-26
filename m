Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C4E1D52B
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrTdRp6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A342C433C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698332296;
	bh=LxGkwcVrFQ9M+t3+6znrSvGCrfmfjNx8A2zX92dnPTg=;
	h=To:Subject:From:Date:From;
	b=IrTdRp6DDSecm37PHV/bRLPZAs4O8rpHhNqQLVp5vArfC9ygK2SrBOyTLczOZeb64
	 2fiEzVqPvwVVWQ/INKA6azpHAlixDddHgVEHB7uMka3veuHPe8evpitC/FNIuC/8Dy
	 eOvAPuQld4Jn4/fAQ1wnRq7YUZnPPjF0a/CPeFuXZwx9GwSgvwVVUcWjfUEvpjE+u9
	 r7UbLp301mykSIFbpaeAijhQdEYkUezEPGu8oQdyVS60nl2NVz8Ds9eq7FSKWQlLmQ
	 KIC6Fc3t3g6QU3hsZkmeizhzUG2757luEzrEfpkUPko6S8LrFaKvOLJWCyO6slg0pj
	 pw5lRkHqRh0Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69CFBC25B48
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169833229639.18329.13443657543727091863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48008cced6c40d4a6b5d4af3ae029b05ffe437c52e1381a5f3e0df157a7267e
Date: Thu, 26 Oct 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698332296
