Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC7151FA0
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8891AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672380087;
	bh=7Ha/bgGgJZWcXcI5Uocy5ETZIgvPqqrmJl6R02nSDPs=;
	h=To:Subject:From:Date:From;
	b=WD9/dGEsG2L9aOJWWZvLLMtbhyGj0XzpvoBOLzJgngUroESqRrMzTEpZzbKRFurrS
	 MbwGjBIDaAD1O3nLnIF3IpJUsB35tnqCYXTggreJ4hcwJosIoRpXmTpoZZSotbkaWz
	 O10nW8267f4eFkNcUA9xmAQRmG2prRnx67yPc18cF2MTc9FPW9rAckUjJiE/Sl0+hU
	 3gDbK1UVlNpRXZbJLuOsKF/OtUdom8TKFmmOlg/2nzjO46pQ1so44qZ3V4QErvgXCC
	 zqPxbnwN5rMjNpurs+bbPAGdbxF7R9Wb7v4Xp/P/oQat8tQWkJS5UPjgXNnXcYjrqi
	 agwVmIKsXwBUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DD52C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238008742.7078.1536973992430197555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9619e9221c948ad7d6f4e18394d2e37b1616ce7341e27f2a4e693ab41798aa
Date: Fri, 30 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672380087
