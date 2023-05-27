Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FA83FEF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 15:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA38FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 15:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685201946;
	bh=tcPu/F0QT0JsCkBKn+owluvyiNotRLve2omQX1vHAr8=;
	h=To:Subject:From:Date:From;
	b=hSR/09sAj3gugPr7vcr7gVlIvTTsWe7USks65I/DylQcaWJnN+WXodqXI8/VE3EeO
	 pzVHuHPGVeHSPENILShOcvGiKtFlHbf0LTLpqnVg8dI1WbBjwlADEyA7lWR6EE3nNA
	 eosEbI3adKwScMNjmSmbRMIM+ZsGR4AOVl/TL47WlYQUBW19KJ4yd/XDI4fNOJnOIZ
	 qJpkLVgVcQr33Ah6k7hGTHy5pLcvGkMQMFeQoIf+OuyCuhk7n32yCSkroyjDhUsaz0
	 Q1+7q4MFSMg4epTIzqNc3OWhARvJXA1DGihRiB3a9nXSFBS7D0urt3PTPrtxmh4L/F
	 pPv9YX0hG6z9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FC2C77B7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 15:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168520194576.13619.2390116853752882239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9248ab4d23af7a483d0917a71872e8313d588c593f65595eb528dfb7f872084
Date: Sat, 27 May 2023 15:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685201945
