Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E201118
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6bMX0nJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 965E0C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703404096;
	bh=yk1TKz2HHZf87yzN7Tdo7ECwocIgHcWilvfq4rLPYvg=;
	h=To:Subject:From:Date:From;
	b=k6bMX0nJ/AuBOd6NnGwrLrxuh1/YwGAHb/mpOMyCJaRomjraLxjn/lr0wRCSO2LzQ
	 yj767/h4E/Kw6qDdkPgj5SByGT2RFh3sTK75ZwoB5gwMje0Yo4Y4NySF+HqPE6FRHS
	 I/Q2G+F2DkOc2g3AFdZq3ok0vA5F33eA9mZ/Hmw+s4GiE1D+AXQwDIav69kz/k1RN+
	 Ec17TUvZcv4V2UUVFoKFwfXxM07pIc4NTvrdUgEcI9NHcyjhRR7T8GDqKPPYX3jHhC
	 7b6dzb9q4Iwi0f1x7ZxbLLcyJG0nVGhjbHznNxfVyeadLJ6CTFAemZ/lDMjqlHvDAS
	 OI/YYc7qdMirg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76B33C46CD3
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170340409644.26020.8943206593794815857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ac46cf071db5f9820b32239a71804246a03d2261dcea8a5b9e187b0a178384
Date: Sun, 24 Dec 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703404096
