Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1593115AB
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GstlG+X7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80209C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702100296;
	bh=zdAe3o1nJ7HQaW0py2K1O1EvWV9XU841SPvyhDv1m78=;
	h=To:Subject:From:Date:From;
	b=GstlG+X7+ByNNzT2qvzSlWJJlF8vHg/Vhxqsc09cVxuIh1TmDpLbBdxSgBOVwwOyA
	 93ClZmsd6q91dLmMQFiXCrI1+ldTUzF00elsKb9Znkl6rfW+43UIYo6QFPTIODU6a7
	 AKzgkhs1glBCjrLSOsBMMr/XYTDTgZkExe7DWmhD38Fymi6tjLfe1PZXtkNAHYD+w+
	 +RSMcSA2ur7x6hMTI+WGDnBxexnC7uzdlx9lUgyjT20R3Myb3nMibr26fDugdzHRYB
	 dSf/r4WNf1KErU998Qm5YY1rAepx/ElflpU7Q49eratAzRf7lbtCsqGc9gq/sypU3k
	 ttrSmmmKk1LoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FC2C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170210029637.8160.14307939872466860445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f410af1a1775e494908a021390f51567e66afb65e02cbd967c1224bc88969ab1
Date: Sat, 09 Dec 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702100296
