Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109B0367
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92ACCC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671340287;
	bh=4dpiUOSLTNixtW4ZxQswtFLN2nLfJIqUwlXOTZakjt0=;
	h=To:Subject:From:Date:From;
	b=OfRRyw6APiEGt1P0Skg48CWRm0VOA25+SnXUcHxVlbYfrjff6EoTBZmRx78XAf/yr
	 FlBUjsx3x7xFPZuaPaNjMmWeoJRa2qL4k4o53TTmtTU/CJdDK+brwwx+dZkydx30e+
	 gJ062mGULqk8642Z0mUOdajb7DQv4xM2p7zw/5QTUZpYme2J82DVhRE609BueDgFh/
	 rMYY6vmT2w+6B1eZwi8WfteKOboNj5U9U4o4IasZX/fHAWoyax980VvVruEn1trc9o
	 qJ+pO9bIosihWQKlZ3Rb5beecNj2UybGL4l/j+MTRVRdWNAMJxpPhaV8g5PCyUMBHp
	 EvrMJeqhItX0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65243C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167134028738.20050.16410179506026423520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f356b26a250944c39276f631a37d8bafc14e73b49c1363ca1dfc3e2f0ae337de
Date: Sun, 18 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671340287
