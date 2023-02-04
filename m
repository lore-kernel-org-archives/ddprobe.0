Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297BA7C
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 23:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EDAC433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 23:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675553165;
	bh=UWT/QVWWT6/I4QSznDs6GnfKRUUqAgH/fUoZkDwxHnQ=;
	h=To:Subject:From:Date:From;
	b=fayGLPl9NiPUqGKQPAfoREFUPKHA1vfdXvn6vPdTLQe4QJwiYN233U6kJetfFIXGz
	 Uu3IvrJ1ehaV5kol7Gq9Pvi/PU3n+JJ+ZZjl7OXrn3rBLnG99pVxrKow3xDuavT03L
	 oR9xnitlSiBZDQdZQwfCqyTtanWeX2FdW6mFvySVnBEPj3Mp3Ut8OnxMRhMTVNh9Ne
	 D5xgBtTqYUN/rC9F2Vzr3G5l+DWgDCSm+6kUEAs2NDmGFT+MKg3E13QZm4ylX0I4B6
	 i6JxqEM7olJS+iVyb62Ur9bZP+GHzIeAJ1vW9IeBvNueQCiFKOVxxCbyJ1bPNV/IR9
	 xITKa6q1Cgqlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D83C636CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 23:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167555316574.8695.18152671536378977136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b86b4b54db9dcfd972cad97b94700acd4b83252addec2a901f3372fe910242c
Date: Sat, 04 Feb 2023 23:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675553165
