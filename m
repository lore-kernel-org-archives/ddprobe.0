Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA78E8805
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91D08C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671967287;
	bh=xOnAE1wmnw2Aexo9ifMv+7DpDRMxcFA9OHWZzCYq3r4=;
	h=To:Subject:From:Date:From;
	b=oE7hRvZTJkLtDExsY8V5tDuOpOS0d44h69pazF0o+c85Ow+j2clbvhMytTjNMH9oJ
	 xDomMpQcb2Gd+ZF/A8Qb26UyiYrwX3y20iOgoSC7l2Oh7w9y23D7zQcQJkD4YKPHcH
	 8aCtiojoyz3HDFf8ElbnISXQUl+4UkpMN4z0ufRbSOwhLkSaCxlZiEuRLssKlFn8a7
	 QERmjdz0yU5yc69YyKHFCzPIh6aRK4rCJamwNbpieuKXOUe8wSHMXdElnr0yH1K7L+
	 NMWp+CSDKQt176UMTReroy9pn06ebxiWKsBl1+hkg320Yo3ec8UBc7m1pawMcpx5hs
	 /QUeTIPK8V1aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72C2BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167196728742.2902.3851321991810558723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d55355aa4171abd31d32bcb3202b52f83ccb0969475543aaa260e6a883b230
Date: Sun, 25 Dec 2022 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671967287
