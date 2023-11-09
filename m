Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2101953B8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjCQCigK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96712C433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699512496;
	bh=C5t+pIl6tdstTBMNjr62OE6XkDc8EhjlJCQzGNi7kJ4=;
	h=To:Subject:From:Date:From;
	b=XjCQCigKT19P78iKdrPuBMMSdxdFgN3K+hKvrQt9xMaRQPktfAFCnMnz6r+YLGvqG
	 MoV0HfodLr0OpMQFa0s6W0oorjdqlMXneTw57egIgxgCEozUqqA7s9em2mvNYfng8K
	 tuP5UcAq0F5xXMWuZ+4jxDMHdXhaQXZonJNnnyhvEcfFYpRSOi7k/Htj4005KniecX
	 caZ7yB+UlbBonXyiy0Hu4AeK27eCWEZFK8VYLUYt2PATb2lkK5CZb8qjYpl4/D5PMl
	 7bazfSEamC8o3S52KwxIFWVEKzQTJB83UcybgOjkBtoOobL92ztyrQ394kWMU0IV4J
	 SXnvb7k6Hvn1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72C9AC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169951249644.538.456712784695388540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ec5b295c0c451ad6a2acb8a78e74c65b54fcbd0db3672412caddfc27180b47
Date: Thu, 09 Nov 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699512496
