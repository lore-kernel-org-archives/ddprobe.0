Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A68390
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 02:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vf38Vmeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA14DC433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 02:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696906628;
	bh=rVAc9OIjIiPJuAAH6ffuS8z8JvUl81MuEkC5LwDafQk=;
	h=To:Subject:From:Date:From;
	b=Vf38Vmehj1+ojGHCfGIrB2XhOWgnS8q7OsiCBPMYnnpERIf+xv+DAHC+1uV/ZdpvA
	 jGdHrk0PNBCzf80RzOeYwHbigekZdZn97Jc5nWi13QQp+hbY799hrGR/pgwvDNwWcN
	 m/lcO34heqNv9I7r1/xaGAk+HZYH1NBenj659MdtMvFcacOQtIbSti/zRroIwqNapf
	 NHQ1MQepQzSKPllwFexOd/IbAviZTFRbZ61urGbkyqZT+tNtgapEN6I5kOhhZtPfvQ
	 yetGzB8eOUyfUu8jZEtoErDL2POdIA5utcL/tLRiCgugm5vsI97YemgEMKUReSc1A4
	 cFvQtJt9EjNjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F52CD68E4
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 02:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169690662871.18220.9033637298260397183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8181bf56a7f9115f79d8c727f9bc242d3e3b2ddb765148a692d34179f8b2c8e
Date: Tue, 10 Oct 2023 02:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696906628
