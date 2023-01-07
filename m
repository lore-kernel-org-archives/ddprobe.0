Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA90DA47
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A978C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673119887;
	bh=AL2MWLytbOlcwYwZa8I0CjcxOXIhMPbLuHhO6OieuXQ=;
	h=To:Subject:From:Date:From;
	b=FszGw7Gogw8UWTogi4qumknKX6lcdOl/Jdd/n4UUFYGJx6TRoaNwj+azVTDnxpTGA
	 k9hbBbk9R1Vo8g/zyTXtLnsVrPdG1pp5R44ovx8JVxgP13xkE0VJXxt3i+PsRvMCnT
	 ituiAuIVv0Yf61ZJ1dZcpw2HuGTqflal/f+M77oIRTXkCTy9rOxJV/bR6x/essH6Vr
	 4aXBqTuobO0L+isJBnEX+hz4OWUYLYYyXBJI5as4WmaA2ebut9wbbTHua0QhODnYXQ
	 K5zLzPe28m4qg68S2CMEnlInY2TJl78zVsxVQWotq0hsdBGggOCpyiJoEiwZOrzXnU
	 TtGfS+MbOYyqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69301C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167311988742.21847.8363292411226735026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b987763548365556c94dc2f15800f48beeb40c450a60e18e02a32d99d5650ad
Date: Sat, 07 Jan 2023 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673119887
