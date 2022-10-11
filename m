Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09D215AC
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 773B2C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665452453;
	bh=du2T0Q+wfqdBiwtVrmxLuBIda0dY9DJ4FEoFqgdPo/s=;
	h=To:Subject:From:Date:From;
	b=CebHbWU4la8dayOUn+ipSJmhoKapLFA3T5gB/8z7CHW1rr06dlnIzqMqMGTiS73io
	 N2mJwcM+L5k+ckhkcaCxgwr4VE9tq0XMxr/RHbPM2MnSvCpfM4AxoUDvTgPibd2xOZ
	 xAR3AF/YaK+OXbNbehihZk+Cna1t7AwK8p+mE4tO/VqjikPhd9cdOtsXoh3lyUGsJ/
	 7o7Z1Bf2QmUIeNKTfEZIHYlfLrp45nKvHpS1zqpu/0N3aHv1qGuKMuEMcAgqXPScvm
	 o109O7dEOUkR9jLzT5VNmv9nZWyOtlC0D7kO/y1frLDP7vNdVml4s8lSc4wz7cbG1Z
	 Bgb0S9i3uDRdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4A3C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166545245337.30499.8363892729034015022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538e2f5d75ac2dfd22b52a91c8631a2cb3a1a5db601cf55631575766e30112ff
Date: Tue, 11 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665452453
