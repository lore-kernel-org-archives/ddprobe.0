Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B885F7B
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D044C433B5
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665802253;
	bh=z2qN8pY7XPkEa1nLXyl9hzeGEEfqTKLGki5qAD80GPI=;
	h=To:Subject:From:Date:From;
	b=oURbTLOt/QCPNJET1IrOrqPPyT6wWcj8p3k5biVMPECkXkH0xBSgHmxqD3kdJgMit
	 vxsvXUGLKd1e18/yQMq6NoeptsvoFcUXOEBlRQ5fXT3uQGHuM4pw5KsiC1ArAL+fSb
	 dagJFiqYTVk/vpAjfo0gQlLa7GRCn2m2u6eeogPAwfUQDcxQdMzRjCqBn+wlfHTFhm
	 vvuSK/n2ty7R6p8YX6unoGjdBnntn8pYvFEA+CYUBHDh63ROnz1YWB5Mt6bb53fGDx
	 FThP6u8WWOQdkS7GKUmVTtacLgoJKxjTEIXV4UoUqqmsy14XkSj/ObpFxj8QVAuF+/
	 X2yjIXPdFjI6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554BDC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166580225334.22501.9998495046106154607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3daed9d5723d1c8159656f8b0aca91a0f6b8b06622ade17ed5642053edc848
Date: Sat, 15 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665802253
