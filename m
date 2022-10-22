Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27143C05
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DBE9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666452653;
	bh=9CyP/6y1wDOru+V2/7hlKD4ckW2vbyFMCWorRAKlCxo=;
	h=To:Subject:From:Date:From;
	b=j7DqGwQSjOiW+OboGVGsWTALedt78nVE2jr4nwMPcU1n2QIrOj6xMc16lANJ35hgz
	 ZFOmoEEAEHLtQ5FiGx0V9lTJs82XqZoYRcJSi+4SUMQqsaSpSZrPA/ISBLRV8McsfT
	 Tg7S2ox34p7WGHU+QEbYya2cwdXULKFxGepTE08ZAgQxeFwXaWL76BwKRQuJG4ptb9
	 pku97Cg1TMaEMg0my+6qIdp4ERlxfOoTHr34xUnEIlT0Y40ePRZS5FYawp+yqEow1/
	 zOkVQFUzVMudeGkcPlSnoITdVadeDKGtGPLtwpXfwcpFLOSPdYJOpyNGBQ5qUcNEo8
	 wFYHxKxTkLhsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C38C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166645265332.22934.16122766344208111727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c9c877b06488aca8a1cc83995ab5cd771c52940da4cefc6f82c9adb10353e4
Date: Sat, 22 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666452653
