Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6187963F
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 10:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F37C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 10:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695552908;
	bh=faG7ly35MZLXRZ9Vgg0SZdHkfPesax9Y+d2PwiZTVQ8=;
	h=To:Subject:From:Date:From;
	b=pRlQdRmNkVvCDD7i8IHpfBFlMiX3uO+weW7Dyfkf1RhWV+++Enm2uciK9sA7x50l2
	 HQehBB8tOIwheCYKNivZyBVvBPWoKowTlq/6ldYrctWMTIXvIJ67lxnnVOQBP9vgQz
	 TrhFN6+S/CoVx6mG0hDbNVAMQhBXOItEOQ9ieCOCvhjyWUO7Y+fPd5NtC9f5BWOcTf
	 Bu2hVHZeykGkfBVJflYMeSfHHOUIs0426iYLzFMsYQaHtQ6jeQ2sGgHTXAaibfDV5l
	 FhjG/QUeY+Mnc5Y5vLbKmebcC/cPrs8F7UTUbaiSRk1GTeXaOYXsR/1K8wyk/TPDM4
	 0B2VCV7AqxFPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE5BCE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 10:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169555290869.15247.3693165340483649395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711587d19a87993debd6f78f39f1334cca933bf0b31cd84c8bf422828308910e
Date: Sun, 24 Sep 2023 10:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695552908
