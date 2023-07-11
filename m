Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEE13C28
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 05:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F36C433C9
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 05:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689052028;
	bh=YchNhrPUABtMvqc4lkzp4nD0qc6+wCBmB3wMqpHTM7o=;
	h=To:Subject:From:Date:From;
	b=YvE1LpVWHulw1IgAb9PkTeUoYroefa6jBNRWxJNXMnEAKdxcREbSCWOUx2pulVfmg
	 RS8kehUiH2UChejN1yHdd7tMzKwOVSEp9Asy7dO65rCvrDQmZEKaHVRCffEgqzEzPO
	 u5bsjYAsP4fQEzAkK75xo9GZRAOmGY4K3hAqalLnR44kzY4i0WPs0aiRxFRjFR2UNm
	 bz0M1TuLpPFPUQ4Lo4fB5Vb3KewU7u55ojNqe6WGiyERDXUrQOAAHfHFBlRL5P8AOY
	 HDxV3+2qEztNeaNaftcCYm2YyuhEgfGn8YKWihfa8i34aossPs1BLolW2k3KHqaLkh
	 WiZ84lw8EIJ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8705EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 05:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168905202868.25681.4019978419980154007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5a8d4bdf0cceeb0929c1051c997209421dd95556eabd3f9ee49fcc79f48124
Date: Tue, 11 Jul 2023 05:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689052028
