Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB7A522E
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 11:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E4AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 11:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688903828;
	bh=33Z1ImZ8I6EYcd8UfUKuj18bWJOz/1rEyHSJezzZ05I=;
	h=To:Subject:From:Date:From;
	b=JaMc4rBD0QoYSlpr0EXAC46WUG+IxvU4J0433eFOCWpCenN5DOT/7Y6r0ny/QRBJ+
	 Dx4TBORz5YtlilHVrqFJPPSbdNntWhpEP08Js+UPR2zo/zL8enAbVNyqfQX7hJR6pn
	 HvQ7XN+vAPm9+vBa8+vHOCqTEEFQVHErD/OkhP5yEJ/V+Mw9Jh8f3B+wrZgiIrHgmE
	 u1ECYOstUUA2esAAuYytPneMkwqCfY96nLbVn9AHvVYTgpo2ARWDvbNGbhdL4ywSPk
	 +aoqPiU/dut9wsIXLFO1kHvmilQXDvWVNsnv67Tjc11PkgYct2R63zK0Alk0vZd1mI
	 Tpy2txsaBxtdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9298EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 11:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168890382868.19293.1602149666252695287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8937c112aec097dc989a6684f7d9b5c1d5d69329c56552cb8f2ed98fd2abe6
Date: Sun, 09 Jul 2023 11:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688903828
