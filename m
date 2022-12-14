Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D270428F6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CB6FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671007287;
	bh=jUNHc4GN92k/RaeWJKsenk95rSbO7vVj4Qr8gkJR69Q=;
	h=To:Subject:From:Date:From;
	b=Au2RGDFrAGFnbx40ZapQp4FazolE0HfjpqtOoIPsRVIGDXUte9sniKsj6h799j8vi
	 VqLi2egU0HJH5lseeHDgisAqXhz3fAqBTJcDbcBDjZ4bSFALzkfZlyZvdf7Qp2gVpK
	 oXWfRh0Tn9VSpyQgGVNkyjTgcZo5q8D5SCM26OSYIb5D6VbfPPnlB6wKD/mScA6k8f
	 y/vTIm8RoZCP0kTi2Us3bGkrUDWhQtSLvmcAQ4GOhAXFso8aQKAiwhG8V5al6tChsm
	 PAgGNEemsigt6oe2wWIZx1PS3mEEmmYuBpfZrb93kMvOEisR/oK5e2wHZh/8IV9YAu
	 kWQbTxFiAyysQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5E1C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100728737.28254.1015245666231777314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8070d66779437b39856b767a62acf889891b00b6eb28a986dca00274088b4e8
Date: Wed, 14 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671007287
