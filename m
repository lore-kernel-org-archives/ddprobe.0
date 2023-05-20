Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82853632
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 03:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B7F2C433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 03:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684554486;
	bh=t1FDmoT1KtXSV4mF28sDR9fnQlFR/MBW9RL++T19YKY=;
	h=To:Subject:From:Date:From;
	b=fpj5sHgOny6AGkbhgIdTJvPEXlrWU3cJCISPwIlpoClS2HrTdN341YapaRBAD/2jd
	 1o2yQp4D1D/5fDtUnahQfFvL561e23nHfDooWPRh0OASRm/OmEAUKPtEuyUjRpeFr3
	 iDw/hT+K4DP7ZX3+696wb5xspeD2o3am7Qj4kMk9wVTNg8LbCk6m8ZPu4CgPP7WOSz
	 +hfCP+uZrVGSrn5FkZ3Xp7DKVDHfszM0rjY+9eOTnzsfzm5JKscO/N1/whfgWWmGRm
	 /Kx6I+bsCGE4zPACJ1DjWaYk74a4Zz3sOiSxuYpU9JtiTxv4Q6iSA7lXR2usPHzxNb
	 +4PzovR7Cj7cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1714C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 03:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168455448593.12662.15305102605217864077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2b72241a2f9c4f64ca36e973ad9c00af9878cfd6df51666fa4ff674ec34a7a
Date: Sat, 20 May 2023 03:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684554485
