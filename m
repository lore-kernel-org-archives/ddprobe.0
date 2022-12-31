Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F6B15A8
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88A05C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672468887;
	bh=Ci/oTOCJlvGkjFRSLEb9zRNEcr8nZ37CdZYBEP+Tzf4=;
	h=To:Subject:From:Date:From;
	b=owQJhnmVwmgguhnNLfyBnFr2AIW1YfRl9muEUzAuWQ5PtSzolR+MoC2sxzt3uqA3O
	 KyQ79wNQmdeykqPqyZD3e1Dy4WQMob69Sd2BC+34Oul+ApAWDe5MEMarr+U+CIO3qL
	 I645+XT1QDV777cCciAEg2WonhQbq1djyE7+LcaraRiJj3ofVhTPXSwGfwm17oNstd
	 6haPyK7Ji99uUYiDxaI8F/qwI2OfBX+YomXWzN3DDKMZsBsd5fYu4zIww8wyPzh6MS
	 3DsXcp4IQcGUA/EqrEBU4VVixjf7VJSGyIgLml0R8yM8Bja8h1Kkbx4o96AWwj6S3k
	 E9dNqdG6LpX9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C2A3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167246888741.19556.7957566280359640951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2612460b7c5fd16d6b17fa471e443c04ee9029509a6b2645057a28a8f206589
Date: Sat, 31 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672468887
