Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9850811
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89349C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671275487;
	bh=inEW2W3Pn3ur+TgTcQ99h2p7ucb4ERpr2ITxwl6qpj0=;
	h=To:Subject:From:Date:From;
	b=L7hxk2+QNzdXmGkUHZPw7sX9XqXyHBjoB6k/jq9xp9o+YIgRhWzUbfGaAd/Tf97YY
	 LMh0CpwWiKEDlCzTydfOMmlZNsi/+k9RJyZ5OJeFIRSqFbA8twldHZsBYIPhOOEat/
	 JS1MNvNz0xdYTmKudmW0y1vDym3tlmaAwh35+kQCsdQ5IH/cbPQldzAzr8IIudGuUn
	 bhjbpQVo0PvSBrBPDSiVsL3P6BtHaAYEgXX1QQnMIgYWz/ZzKf7FhseNVfmoAqD4Ii
	 gno9nFVzyF4BNi/PIBO1PG23jhHZWqKoL9a/wJlH0k4f2LO643Y7D7ppbqpgk6/u/w
	 kJ9Ose9DK+A+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6834BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127548739.4922.18249387064540216755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bdea6fe21279eeafa8c4d714ac99bd5f0a4f47cf027b9649d61e635d68a07f1
Date: Sat, 17 Dec 2022 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671275487
