Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E78364BE
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sR68Gir1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FABCC433C7
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700078896;
	bh=0n4i5IJ9z4Tq7/8PEwhYSCBP2g0QGlV0InfvI1Ofv1g=;
	h=To:Subject:From:Date:From;
	b=sR68Gir1LNQtDZqTUuYtejg5eV3UdGPBGWcnxxRgdir5iglVwUbL867ydpJawE0vn
	 w0vw8IDnRPF589hyEOwxkV0pbaRZCWDLkvzVTI1/aWHIv1SvSwdDmT7sOhkOaFkrCM
	 BrHuWOsX2F6EURRfDICQEcd7za2jSYbnRn3X7WEitZxhU9OcT3Onks6/cdNXzpj9gL
	 YQC6+D3+lZRUf3Z9CrabxdnR/HfetZmiTW0Wpj8S5KS0gDYjjtwIdiyv15cVUem5gJ
	 FYk3QqrPZgEv09k32EsokNRHbIrln5lYzsn2e4g/CICOZcYFZaZPbe/9waaZKiPwVV
	 49/NRwUGAVbHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D02FC072A2
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170007889637.15327.6692079679976007359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1e1daa2e7fd493d96710d9b989a6c05d00ac662fcadf69dfc47a79137def66
Date: Wed, 15 Nov 2023 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700078896
