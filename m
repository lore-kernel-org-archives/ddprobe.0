Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119DA101C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yavmtkpt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92DF7C433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697902096;
	bh=Jg07wb+7Wx9FTBzK/H6iK6/cypid1c2sAr6CkYHFBxY=;
	h=To:Subject:From:Date:From;
	b=YavmtkptXDBz/I+l2gvWuEAPvGEFPPW2yX/I/sY5DDFEDMHREGCAR9aDYEijo0JMJ
	 QmXrKiziOaD2nBQo/d88cZXQGTtselAutrWTt8sRtbyNyjL3WBdzGkhgkSN5lmDzss
	 scWIjVmIerIoFxxrxWinpaepW9zgNz5pwWWw9P5Vzl7xwMbcoelY12roRt+7LR6K5K
	 VSieUAEj6sTAfw/2QLAWcvfycQUhS2KR4FoBzR1/vFOoJbclpBhJNDXutl7HVklpJN
	 ci2x4QZ2NgYy/rG/dCHrgVUU2ATMRqCAXGgvFuoq/uaj+9LxMdI+sAPCQfAIvFvj3R
	 DsIE0BpRZwh2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7879DC001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169790209645.10546.5387756890741309964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44453bef53397280ad4f95c48e720fdaf4ff181dc42fa0611f732eca4e3fedc
Date: Sat, 21 Oct 2023 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697902096
