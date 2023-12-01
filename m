Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296164D135
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4NiXjxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7863FC433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701466096;
	bh=1kv1NSufINIS9ajP1kpdgAvLxQt84oqbZdRshZSDCRI=;
	h=To:Subject:From:Date:From;
	b=U4NiXjxREkw9WS44Go9plj4sP6tdd4MO/1gpsR5YxhE0t9+QFQwK17SRVFoEp+19x
	 L/Nv01xadHT9mrRWuy3NCXHnQ90vsn0GvU6wQrqvQArZxqilVHZAs0dCbG+NO3smxr
	 V+u71Fci3bgmfUzuH8qZDQQci5cfrvT5BfACINYkxUXVmnLuEQ2ZHxiKy4NHRirer8
	 RRxmgcYEnxG48yrs8uH8BeVJJ2vKLJ7tS4zXuTwOQ2kvDWvgbYt1/EBPG2jRoU0tIQ
	 +1DtVAjKwqQ4PaBHgKjuQWx5Mei3nWfEPi40lqzzZrQy/Rdu+Nm4y/gPlaNVIfw20r
	 ugMOHEQ3CdcQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D10FC4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170146609637.17530.15105789359081591360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3404a0b1e90cc50b3e4f7edd3826a1d28509866a54bd825bd82d2159ed8e5de
Date: Fri, 01 Dec 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701466096
