Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84252912
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F489C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670790087;
	bh=AZ93hDSmo+jiJRM7ImPsYwFO+sCnVEno8Xnr10Lh1K4=;
	h=To:Subject:From:Date:From;
	b=lIGRA4nG6wMEpf8D/Y+FC0+yjFuuKIGwtek4w+cb6NS8RlAiVDA3kqpKasuuYJ+vt
	 TNGeTQ1peWl4RN3cFvG66hQV5j2sgKEMYECC6NO8MwdFHlfgrRRKraJsMSq60Qw+Aa
	 mmF4cyzlmggtrsBzWRKzWmxiXOOjouPoc7f6sVq0LqRUE+w1LBKt1tUbNhtoNLIWnP
	 xZ99/O0Vx3PlrYhmVt/4OyhM1oNkCEOWz78Dm/tebZaxBh9rdCQcC4TxLT3k5wmNwf
	 O83OOoLfdGxUC5QvinCwpUxOH4aN96rmNf05RadX9GwG7vhHKCZBB/OHfB767SCgUU
	 38lyAMqYH+h1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6422BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079008740.22878.4486900997144546196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7466dae588daf8810579ae0b37bb9cfae9f4d57c61372046ddbeab6ce8fd4f75
Date: Sun, 11 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670790087
