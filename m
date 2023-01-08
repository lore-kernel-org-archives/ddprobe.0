Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB8CA23A9
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88A43C433F0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673190687;
	bh=lgh1VXQ7UwWo8olFHkNRlesHGSFsw5buRMoMtWylSwc=;
	h=To:Subject:From:Date:From;
	b=U8V5fPLwLmlx/tPfVRzQIELiS1YMfzwqo8Ex+H+Kao7wA8NMO4h6cOUnWUILhn3rQ
	 MIrcijFq7NV3dbs/VwxTmBKcGiAmhGHnHuGH1cDBiI4WFvRLeEbOC3Kf7kKOvOOCYr
	 poW2WFBnVvSHmeSG0lxGaH14IOoo9Hk0Pfhwy7Jc3vcCYkBAqR8E5NwUG3ftlKtnPE
	 X7Bfpbq4cKELZhdodU5ZN2qfgmZ0ZNjYTXZKOj/OpeGGfDwaaau7xNCbKDfXvRVD9w
	 wWL4rD5Bguh8A4gAr+4VOvaNm5+0x7q0ic5AFKp53KkWvm7RzNEAa4Z2bDtuGJGFzF
	 yBBLP3nX1D3KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C99AC53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167319068743.32719.296485848231242468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e402012774456ff7173cb0248e5e333375e7efbf8eed7280bc592c4cf0015e
Date: Sun, 08 Jan 2023 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673190687
