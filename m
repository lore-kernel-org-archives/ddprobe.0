Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F9D1E515
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 15:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22BAC433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 15:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690038128;
	bh=gG9qC+ZzEt/QW3MtNtG2RXWw7dAuFeaB/hBjMq+OFkE=;
	h=To:Subject:From:Date:From;
	b=j/ypenFgbgl6fLYG56WpJkD1hvGy7lAB0d5XYcZfV2xGJS1IN4+iiiu6g0LkR33ab
	 keogwh0kePo4b8Eq0UQK6iUzL8Ytfd48RSJu/CohbZIwmUT7ZnHcqoe+UlmBf+gTY4
	 h3V6WPLq+TpkGvbVynFNRZewbVCTyBkQp+MGtBQfGlxIqb2ddqBtjVU8Pa61Ain3Qh
	 IUb2JO2juv35JCVCVdM/PQCjDi00ueJgm0ey8EpBIpXLf0kH/lkvuZTg7KomD5yTlz
	 P71cSieiWfrvMqW8Oj67xarSzUF58FoxfDQ2edKrAAbxYpKKlmELDpG75IZ437orQv
	 6JaaRB3oIt2yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22D3EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 15:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169003812871.31251.13742614651781353355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf32f7b91744f0495bf443317a80e81ae3c4df3757bc7a06dec321cc7bd73560
Date: Sat, 22 Jul 2023 15:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690038128
