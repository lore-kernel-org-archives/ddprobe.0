Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652DE653
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 05:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C922BC433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 05:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695534308;
	bh=QWHti7kWM8q635IRc1p7DD/x26QP/YIz7zBvtu25c0w=;
	h=To:Subject:From:Date:From;
	b=gPu919iNHyKDpk4+HGgo2bqKhkeBHQAsDhdQUGN+snedtj2Dzk28zKjiCn1uWsRNo
	 oL/2ht0Uf9FL8vjlrReJ2TSIA4vJ2dmdOsTpfCY1E9e32axk6XXxTxEvR0aBzWY5SH
	 cYzb6AOs9qlJbNz9uNMvRhsJbDMTxoTjrCQyj+hp3Lwnp5U/jGZD+OnTPTaZcpCt+y
	 kRNtBVm+T9XelM6KpgSGI8y4N4zjwZSvwZFGabs5lomuSN6gA8m2Jw53JROwxL+IjJ
	 kNYsWfDRA395aRZhF2T/kmh9iYoOXv7kgxNHzsCu1kEV7Cczhqt0z423EmdbaZnrF9
	 SOhxj2NP9Kwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD81CE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 05:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169553430866.20498.7242275584435619253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c486e269f0a111094e71ad12e334aaf000763fe6fcc34b2a0ad8da2d9e68bd9f
Date: Sun, 24 Sep 2023 05:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695534308
