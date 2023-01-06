Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46BB1103
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87715C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673001687;
	bh=d96QeHLPMEEmLwFQazgGhqQot4ATotI5ZS131PbpL8c=;
	h=To:Subject:From:Date:From;
	b=GkCM+AC15n53GQibTQn/Fdy2NBVr5I3eb3T99nSL+6Mr0v2TnuVuJc6Ea5R1bAoh9
	 edNCV1fghADgNyS0AcZtb6VrsPvo31fdMKeluYYM+rSF79GmkM1hGn4c1ow806XrI0
	 OPJqYEdHTTPwGrPn/TcicL51/hZ8c9/f2St7Hg50d75qlTuO5Kc4Eum80yNIV8A+hh
	 l/ByOi5PdANo/53WszxjVESUrGCVNRZf3KOVrwZpyQzT4N2jj61zFPbAgmDizK1MTu
	 EMV3SLiNAXUpGOVzMg+wiIzSGH/3fbvpdKKJ6NLrLYL7F7pmmdyfLGKesDLRqUt5K8
	 WnBcIZpqcyJGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69828C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167300168742.15644.10953383212971982491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2022b3bd93e80e9ad3efab054173782c80f764b8a1180e30deab979f879771c
Date: Fri, 06 Jan 2023 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673001687
