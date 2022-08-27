Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD8715A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 08:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 723CDC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 08:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661589052;
	bh=DcXB1Y0TuFU9JAeR6mJetUUf+MxRJRfwc8EpqjM9Cvs=;
	h=To:Subject:From:Date:From;
	b=m5HK4FNORaO/pJXqcsPmV38yLaeTZoL0o/JnJPLs2tBv+CNUmCkbN2A7PxPUeyW9m
	 ZiP+W63ZPzL61YNyyNLKeNwISBKIfCLIqlmjFaB0FoWsWkzCbkEfTSCGrNPixZZIXP
	 Es5M7KiaPBydyFKHUmnsXCTxCBor2Bu44qReBNic3kHV664wDmlVMpnC55TOf2YgpB
	 S743LzROf9IU/0PdmBIzX7iC7MIA9sZ6ZKj29GdmGHbRzsPDeph9ZAq8HkwoOzvinB
	 FyZDd3mGUKDuam4AbhNOgEnJ/g33lS8ZAiDqoAn/2OGaETNOuKGRO6cZG85/6Vi1Bn
	 mdCPCVIw9rMUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574E6C0502C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 08:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158905234.30240.12361945507315466604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4330ea338010953d463c2183d42dc1b1bcd693da473ca74d5c0175c8900561
Date: Sat, 27 Aug 2022 08:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661589052
