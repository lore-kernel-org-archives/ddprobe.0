Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99FFED8
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86602C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670700687;
	bh=mcAvF8cMjCThX3jxqs8OH0voXZ6VP7Aa2YtMDacejGU=;
	h=To:Subject:From:Date:From;
	b=dkxlaYV5Ll9yyuc6zapr86v9rOrIIreQFje2Mpz1beb+AUHpD6qkh5XQv8F7T3elk
	 2pF6aRbmH05Gv895vp1Kgv9yNZJ/5iKm4pNflx8QskHtGD7R+iZBhial9JeeLEGjiq
	 nteWq0WWxDFAJjd2TXjjpLgY4L62uyYzdeQa45RtXbPtK5Fh2893yyv50PiAjAornU
	 5BP/UMqyjBVR4gmX8lmdh0Us+C1wq7xestkRgly0GxVjC7tVt3cxNXI7EV/NQhe+I6
	 djXPPJKMEdKmXBGrpHSpYAXh2UkhasRbIB55aPMRP7fCC0iCKG+AWhcjMloduLRNsC
	 GwFtkHydbKDyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672C3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070068741.6658.12658108144258541906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54d42a58383a495e851d4948ddcba0657cf2ac08372d3d55de451b5a2d36e14
Date: Sat, 10 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670700687
