Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDEFA1FA5
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8391BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670818887;
	bh=r+8inHBrirmoZxVuheA1VjAiJBQq8e75OOdd4d2C/Pw=;
	h=To:Subject:From:Date:From;
	b=SFj5XAIHMmK3xcadrhZZxaaZXqldgN8NlQUyaVEVObBbd8TNUBowVDr/rfC7QM6Vv
	 +cfQbsExReID9gpYOsmydYJXpqIBlYpB1S31lDQEJRtPfhtl04Qw1nKRxUxM05dgIl
	 THGPAZ6zmVSgD9jNeycOANlAZroHCDDFaO8gWhBB8nUpIWnidHh5lWoAfQdX1Bz5TA
	 7Zg7AJvwIDhdCaPbZknI6nMDC/arPoZ4WAHW8DgG3Rjr6o2BkqCBkihkF8vxDqltcJ
	 ByaFEWRdTiJhjmZLGeRJcHMZCBRMxUqTxOhrCnnFuxAAwfr3+2W0tAaM0B5bT2P9lK
	 0eKiD7tNX7Cww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DBCC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081888739.25648.12184569507916794716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b2d602d6019133bf3e279f5b322dbfd4cdf2b4558e5ff0853027b2e94ccfda
Date: Mon, 12 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670818887
