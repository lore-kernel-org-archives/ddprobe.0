Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172A0156DF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7kcoA0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ADDBC433F1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705085896;
	bh=EQm2mmfWowAq3vFY8xcrUFD17dY3+DqcR6osZMt4erw=;
	h=To:Subject:From:Date:From;
	b=a7kcoA0pevXgrk04EyvLnK+6ifTZ0KkSgD/+7ERgDQFwjymo+If+xTwfpHf/w024j
	 FuHzU308dPtT79U917v8r+WSxTI+X70T6sqkwwixUYdlbNVRaYmKJWA12MG0Bi5irB
	 5IrAbcxl3RgGehrvy1SgqKjEt5YwffNfobfU6R9VT9hABBzDZX78QUdAAeTumXX6QS
	 g56eT/AzpfktAT7krRcLiPGGXmZrq7chPf599wFEGHhbLeeCosHt7vKsaEgpDgZUdZ
	 0eWYDXQuMWwP0gcNkQFnY1MVYJ9pfKvOqOUT4lS+XQFBcr3zS3ajnc90N2EJ8LPvQf
	 8PLOw++zcO3bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645CAC4707C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170508589640.26166.3828300263817144427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c77ee7378f84301fc44e76b6373071539471ebf6e3cd8a8019a0a9c13bd56b
Date: Fri, 12 Jan 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705085896
