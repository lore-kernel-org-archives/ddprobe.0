Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1002BEB8
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WchviyuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88CA4C433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700099296;
	bh=FrP/8475vmPkjIFiCyFu+8Bm0nFiFKMk72Giajq+TAU=;
	h=To:Subject:From:Date:From;
	b=WchviyuImEpXbV8+ouig2imOZ32TzRIIx4KmBee8BlCLZCr/hJgeMpaT3PRTJeYU+
	 IIF0SsQEPh4RnsbjFkUze/veNr+xyBzo8Sv00yjFTKpDkUeXeUQ8ZTqtqORgah4sME
	 xCtIrnesD5+GrK1yCZTul5z1NgGTogMJvsrqXcOIECrF6iV3GhIdNqgrPS0ZHyaxCX
	 73rzk+EjY7tEjhX2CZ26szjMvEgKT6eB9cRP9ITy9FfjcnGYqe9FI+c7ovpB4iAEEq
	 kOlShlCemleZimbOyo6nXX70nFxwFkbOChkvxcLF5IPuiS0hFTcv3J7CLYCxVbouUl
	 bNxcr3HlyHh1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B704C072A2
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170009929642.23440.15159291237319778582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb13e4300e48e6199131b241ea6cbaa539691b6388ef891c55b92ea6eb1660b
Date: Thu, 16 Nov 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700099296
