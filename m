Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52565BE74
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 13:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C032DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 13:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692020588;
	bh=lUXaRE6y9ASA3k1VTyHxjGyoyZkYh7EFYhsdZxiQFdw=;
	h=To:Subject:From:Date:From;
	b=so1OlfVrM5H4rw91vL+T7eDt4Fm4a8UuzHAdiS9DYrPGpL1yi7buSY8hRY6TJ6Qgs
	 2m5xSOO0JstQ47zxDUhtCNwwDmvH6s1sCulBK+/9HTQkD/EeYo3ZUa/qy2PJfQZb0o
	 +/5RqnwXAaAXwYQfFWoTG2UopRHasW8OMGUqiTR6DR3wlHcpaYhezLPSscniVdaRrb
	 WULJtrtjfDLd6CFDOA2cRu/eGiEV38l3h1FvqNNyEqUIQCzEVagS2qsvY1cRvI3LAh
	 zhCyraosCfOdS3Ko7h7DpPbotOcr8QRlVRQQZ2TUCX0dElPTdFAcVjudTmKF+8Njsa
	 RHNpJ1g2wQ8gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74B6C001DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 13:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169202058867.23841.6723358115663602820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2906494788c2ef7ee8acaebc480c2d0b42c1e948f73af01f3f64b3f4d8724fb0
Date: Mon, 14 Aug 2023 13:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692020588
