Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25EC20E1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86DFFC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671861687;
	bh=3LvssWbalh+KqSft2aEfOFNFVDa1CuQBK2TaP96ZkXQ=;
	h=To:Subject:From:Date:From;
	b=mgKUNaeBjFNAxOoAaETDQ+guHkTpWyUivYk8fxcognQgTuB02CImDJtpIs0k2d/WZ
	 0eEW9itcQA//70sqJkt1hESqEJjG34JqBMcU2AkpYx44Hdev/XR+bOSb4y3wDwRR/G
	 QWzIESFv8/3A9WrTZJTAaAxr4MFWnzZeTgUpjJlC9UvCAIS9xDeeSg33zZMhaKwyYu
	 6zEcm2LTTDk5rqFko2jsaEq6LFEO1oi0qGqKHEpoQ/o2TyLH7cp1lEax9NDoP6LE4U
	 SJE+8uPJKuVSn6UlAHOLwnka5KCbwf/4sMg6FThEdGJ5rkUvr2MhFTcrOk5ts2zUQl
	 Xja5cZ9dM60AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F31C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186168739.11626.10489395765962180713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95bc4bcd5218173939c2eecf6ce7dde89bdd3ede9c4f3a8cb1e328d1801bd0f
Date: Sat, 24 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671861687
