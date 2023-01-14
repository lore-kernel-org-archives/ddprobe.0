Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEAB2F51
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD0FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673695887;
	bh=RgbAwhzDecNIB5ohECfYthIy9UdKagFVFOS6i+Rodxo=;
	h=To:Subject:From:Date:From;
	b=ntdSmkvVMOUa7Bvk1w8j6yEkOflfc9eLVdvBU90XtSQ1FmiXHsX3NpJci34LwTu3f
	 iIlA8KEu+R1s1ON9memmdVKsyWnYHvbhzRzzeH9mbPWJR1vHwmlDtC+A7z1VJaAEO6
	 wVCqBXxlwue24cT+U2rfWBTk5fdJnmc895v2F3bLdhQriBwugP3SPHqNaLeojWmWew
	 wdn2Pq/v3NSNpn7TuRqxJ6u2vmVBIniCrgLp3I0Uq5hakHCWgovbk7mNBSo+a/J2Rp
	 DynuGxF94v3W8vX2ZlCcMNsRy2iW3xy/CNxbIrMPCv7xKFWdWq+QMTXul18PTPXQmb
	 l2QM3X5so/Hdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB8EC46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167369588738.4460.7943140050459596027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4d68b6bdc47b22effb58741853387130545ec36509bfd4bee5701942e5e3fa
Date: Sat, 14 Jan 2023 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673695887
