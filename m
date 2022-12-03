Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7CC723B9
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63E39C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670058054;
	bh=yEuFWw0zuZWhsKHrITaC/dz3rLbi1npNtRpo9PAixWc=;
	h=To:Subject:From:Date:From;
	b=SLtUniu+YOY0WpHGFvvhFOGvnDT0lvPkH9wWVpLJQ0MCTq9CT4dxnuXXhhK1WFOZu
	 3R6To4kRkSTMoXWxoWppO8wQf7suXOYQDNJ8Y+U1umJku2V80habIUZfznCKphRl1s
	 dY87a3ca5yePB+f/zUjDKH1yK7jR6B9emS3lyrDkevEHfkeRctP+SKbWRjSsHpMOYC
	 CxM9ltxUP6H+eJh1lj0IlWzESpDXv29ddPmFDHklHNvoNGrqx0rll6RuvaTuxQR/V0
	 9AU1j+qc9clLQP6K2pzdbDUlO0DpLTE23Rmmn281ODUCpE9r8rEgm2YgXThN1WJaxo
	 /SMlLCnn1ipWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F0A5C47088
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167005805431.21906.17468733452664508377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eacb853f36e4b442859b4d609946b2478754350164ecb1352d1941933e037c5e
Date: Sat, 03 Dec 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670058054
