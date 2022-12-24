Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF15417C9
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3F7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671848487;
	bh=S1xImalGh04SMgjX49Y9JLW3MRo+M5U5nIoCPSsP6IY=;
	h=To:Subject:From:Date:From;
	b=OB373zGwFYBM/6JJOloyVUf8CMe2V3hLUyY1G+xmn1JeL8c3sYbBrJhZfScW/vgUg
	 MDXui8DZBCF9IfUSrAwPYKmglpdPjDSgTbft7pbGSIiXs427wFMv/z6AAK33SBaeXs
	 dy8USmdmTY58HTuBOWfcjrQ/aZZOxKCdeJ6HoSJKpv0Ik1SqYs1GWw6YtJN0pYH4cV
	 LMz6jYt4PEloEcVhsakky+GeyRkmMc3G65xCiORCwEp4tUTZBU+HTrCDzchJFetrX4
	 kJqqJNSKLWPQAIXiWxvM3U5EXUODZL5EdJwDLZEwx9ZaDvVcjY/odgGw//96kmYURB
	 NsGQxlHOht8uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A705C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184848746.23505.3082059187695693545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6be16c9713f6720702e794f484655c55a5d194a3ebb5521a224be130a3fbf4
Date: Sat, 24 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671848487
