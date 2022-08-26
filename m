Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC53E1FB2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 739C7C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661479252;
	bh=W7rfLRAqbCCp2zTgKJHUM+HYRMBlHCaRdPivLuXZZG8=;
	h=To:Subject:From:Date:From;
	b=iaXcmcabLSdgTZtYaL61kb1C27v2SJcZvvlfEZfGwaOwrhnY9pTgse8ewqAD4tO/F
	 jJ5D+OQr3aPxVaya+QzHDP2S1Y3AkgipP97RIVyQcEZG93N1kqcx5/RiBpsB1TD1U8
	 v28m6TlauVmaDLVy+Sa6Obc0ZtKST4dWle2maGKc5QoRIIQcS8m9PkUV9HBT+3r7z/
	 +jwoOOr9XhQAf0IgNdWEPr74xMWXkY0caTffviDPXDVqsjuD3zWcqOZQz22KaZAgnl
	 8tq+aqX8wzXj3Tm3HMkWz4S/qtnAJxCHwmAJ8/yy3NjjDe5nS1zVxFSbq1dwwfUeiM
	 YDDQO2MLnv3lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B68CECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147925236.18679.6296094146180456664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f49a5e3d87d75068f52a114e4245f78ddd859511ea11c75b85ac0cd44390834
Date: Fri, 26 Aug 2022 02:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661479252
