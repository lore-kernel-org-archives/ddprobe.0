Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF8517E5
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF41C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673326287;
	bh=8sQaEsDBsXTrLXfGodzZPKGrCZAKFu5Ta4bqsWWuaIM=;
	h=To:Subject:From:Date:From;
	b=X8Y9NGFKGGBQZlHL+TCLqDUejVFJtQx0gCg8iBekeEC5Dk2WcM7FUfl3RKQV3W5xw
	 w8k07K0biw2Xp5ScZwlDMBJ4+xOILP4yaWLdVQziCoArsNnNiGKjmxyy5jTmFONbqM
	 WtjEwGwRB3qzSCJMTeaB1n8ALEoDMN4/gZ7VRoKIau4pMpj+JJX7XTM9wHmKcrWksQ
	 2X1nvLc9ay1ILl3E6WChut+waKNUYz26x6tsVNEr6nEPTAz+m8l+I4HUUxJ/QTw7pi
	 +js3q5WY1x1Ekp11rNNUeUmSt/4/ndsxyR4gOFtV+/ANloZGPFMCnarJNowmNe4Imt
	 BkWWGjIGN1wAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6439BC54EBE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167332628740.4759.14178432865982481744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e811cd02341cded43732e212b85b27e1419d8046b819fb95ae354eb8528289
Date: Tue, 10 Jan 2023 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673326287
