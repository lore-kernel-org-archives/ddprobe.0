Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDB212B61
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LICXGY0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DCDFC433C8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704617896;
	bh=RcMvgmILLGGptiyj6TPuvjNaKsmcDz31qRc+CuAKn6w=;
	h=To:Subject:From:Date:From;
	b=LICXGY0Jsa08ykT9wrcXiCI1Py8OCyEraWn85mtx4lbnltaQi/gIZTI1D6cY7d2iY
	 U8tY/NcYaTpP9HPyebsk9vGzTbfNJZvP+OCI8AXkd39b6OSbMLwKB1CqL82flAC/C5
	 WEChVQ2WWBfNtODzWQlyAEAbf41rT1721LuhhntXCmthXEUepJ4wNTpEySTswYgsA/
	 jX+CcBiKwjwxWwChZcQfRCvaeWxL/TbzB/cDDKGoJrdphquTvOTwCm+QiFHYKBl/nW
	 fBzQzn7JT0O2vy80JElZFL/QMcXxNws6Wf3H6HIHUF+59ZBfXqna6YRh41WZA9QATs
	 FLB5pFlmu3FYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BEDC47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170461789638.12840.1361508607904398225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d9dfe5de606df35ef1963ef70e58d5323ce331447a69c09442893c8251c019
Date: Sun, 07 Jan 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704617896
