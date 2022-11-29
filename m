Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3A87E3
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F167C433B5
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669711254;
	bh=pL4ODbgbrArJ60d10kcMOHLuzSkGMH21vrb1LmsTte0=;
	h=To:Subject:From:Date:From;
	b=FdxZ8kDAl03qAZrCB9gJz3Uovu1Vl7AIs02ttrIVlezbhfSA/mIvJ1TDKi9QIO534
	 1MRs1dZlrBznndQfIVcivvPI0eoMjFYeszJVsaRL3H32NJcnqu6HM+0G9QMU2h31fA
	 GQ93AQZjhfzGOgdhdOwmV51v2k0QIGHXAUFmMzdSTa+E6kCMRuzDAGpkBwslA57mKP
	 nsNxG8pIv4GsGoGPJP+GnYDOKxPveYK7O9BppgNT9VBAto7vLljMxJxqjvmA43JmLr
	 fwD9A32sWmlYzmlJbYk0bI0z8FIv88uLZit4R/16YUEckJBnnx+rd22QhILwAvtGSj
	 Rnrp894agC6lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561B4C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166971125434.9067.11197334796038772953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5654816520152357c31031f1475160ba23e4126b8c4d05dab8785f9f6fec83a9
Date: Tue, 29 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669711254
