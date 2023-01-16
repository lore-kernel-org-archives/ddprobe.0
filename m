Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB8A6FA0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA101C433F2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673892087;
	bh=6uoneSsdghi92FECRxVfOMRm+La1s1I1Py3GvKAziH4=;
	h=To:Subject:From:Date:From;
	b=URT8Tsdy9V8VtcY8morGEl47eRU8mthXfNI+/eiwVAlLNjK/lXKzIHrsDoSUovPJ5
	 WtWLob48Sy4PNf/waV7DdD/BUmWp14uE/gOy7sTMvxqPt1bNKi4NHnDpzp46XyLvi6
	 ogcI8lRdYdpw/hQrKJGU26cgwcbub8DYLSGNVN7QaBlpAGPaMCeocUcFluvJch7hEK
	 w1QuxHEpKSjTPqgiporu5X/11gO8iKzoWJqR0Cr0nJmGfGU1kjQ1PQ9qQQQshSZJB7
	 s0qAkRmcCsPaH9aiPYZH1YsNRdaIHPMDE+pm07x7pc5voR2q5Q3D9iBxtYgbzcwCnG
	 Xin0OTJIlUnsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95534C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167389208759.2376.1717290155610760400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c409e014f3e82dcad7ff42eb0c978cf3a0a8c4790c2ed1b769393456206d50
Date: Mon, 16 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673892087
