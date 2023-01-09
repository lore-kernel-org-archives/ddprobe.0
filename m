Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAB615A4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 869BDC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673224287;
	bh=nt2qH4lPsVvjgNk2D8Ld4hkj2K97l6KzAc5raXD8LYs=;
	h=To:Subject:From:Date:From;
	b=tD2mEmR9F78b/obfSI8nVJd9ta5aT31OMXcpAvnjruTXCoVZEyRb4eSXEfm2WeZZJ
	 cBe3bC1JJs2HgvqsIJpLlcslOt9MrLhKijfHMseYu+rkLxqjjN6TSwjrDoGkdkjPbs
	 7pjCqoGezueUT8R+tzQdpODCfva1ju9AdYdpwPVETsjqTzdjbxtpgMFxji/+tmAlm+
	 feUZJr84e3mBAyK/Xrir7b6hRoCX/SfsCOoJ1poaWrUslfbdoqTNg4dzZNnQh3J2Mt
	 bejzteabloRx89PoQZOpZJcQIlMaIHUabRDi4WCqQZElg/If/2nqo7oUFH5GQtD9qs
	 lgBkkm534Tk9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69123C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167322428742.4899.9306345197010880509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500c013441926043352cfb03965250529a719dab06b06b7be9ad741ece458f1e
Date: Mon, 09 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673224287
