Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75EE3232
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAD2C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662999053;
	bh=IeQ86bR/rpfkxGd6g7ojHeBN8TVFqrFQPbj/6qM7SiU=;
	h=To:Subject:From:Date:From;
	b=b8nE0l+NQF01i32bUut6b8p8y209ZcefvZFdis5qnBWG3RZrRZejqYUi7jDrvNcMF
	 Vwmr+C5pnCqydgWkqsYLdldLEDJceCYHeudrtxldH7z6pG+og8khpqpnQNMJuXzKhO
	 dkwoyLSVc4FaaS+SgLBeRnu3e52x868JNufxD7nE3w/ofjgSHIUmUWObWoMrLuRji4
	 I8skpQ5Sl2c9Ehue3Wcxf1TyZDAapattiYyiDDe6pThEE6czpaCzyG5IlVOtl5Qfqp
	 Sud4wd7xzwMxmFqcJiUvxd32ogjd9J/qu8p5ihPiXjvK1kl8YjpigLFBtBzOd98OVM
	 pVodviOnI7evw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E74ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166299905340.24860.17619407456851570285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e5b1b0cdc53db1806675e3559c8523e0df6a401d9e4e34dfd78536ba4619d89
Date: Mon, 12 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662999053
