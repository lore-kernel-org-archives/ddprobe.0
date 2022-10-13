Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A4417C9
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE66C433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665623453;
	bh=ITJ8EAMguSKgicXQwReHbwN2Pqudpfi0bA7/SKR2Tbs=;
	h=To:Subject:From:Date:From;
	b=FrVdplHZA+nE6KKpnQTyPCPmAwUak6iwls625ETMrjP76XQhb58XD2cl2EaJk2wdU
	 dU6c3guHme8+35UFYQrwVydHSdPlrylCLI6vZPtd7POhaRDxNC8OOnff0AkR082nRa
	 rv+eFzEtEPOcONiyRBZ6tlZHUeiYzqNMWIz52noao55TAO68AxCNS0aR2Qbs9j7hKZ
	 4hw8PHaqn6Mx8Nps+Pov8aaRWTjG/lm/l/hUx9dym3Wcq6t+Lbm4pbOMQ98Gm0v6aL
	 jl0EUDeW1KILfIlK2dmEXFU7AQIQKTTO/kkqZURIQAEO8MJe/uJ9K4bnYrV4R/LJa4
	 8KewKHWb1X33g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3FFC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166562345336.1564.2658821517628890770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fdf01a2de95072e632f31bc20bc14336a6941b74077290550d26b43cf4f2147
Date: Thu, 13 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665623453
