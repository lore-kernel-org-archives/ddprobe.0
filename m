Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DAE01F93D
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 16:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96EFC433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694621648;
	bh=RYdyg5xaCkcTWVr8WWLrlPV3KlmhLnj6yMjjBG09q4Y=;
	h=To:Subject:From:Date:From;
	b=utjplW2buAW8oJVJzxSdvFminJm2cHzxGclzgzNILWQSio5fHlF89ndsmEQ9Swp/m
	 tFU1idSQzJG0Nq2wPgNDusL+vce32PBAPfQBLKIWcW9XIxBCgZzgDUAMaW+PAXkmWr
	 7LmnmD/1FExfQX5+ytszRYLzPiMO3/yt7vnxPDr7fIk2mydAM7MMLMjmcGuTUKSkP5
	 iR66t3hRSNYT/HqZDWgTUUT0bSeEp+keRfobo48pIDdpPYBKcM5X6Dlp4dqQJxd/s0
	 jAIb/CEbyT3MKOwaN1MylIvPkWurJGclm04aHvMG9dMgLHVrsSaJDZvuygDM/2Fza3
	 vDae4noAAFxmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AEEEDEC7C
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 16:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169462164874.15561.17266023504978283665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfacb38db87c99302778a12b62cace5d3d9da581967a7e90f30731f3178e5023
Date: Wed, 13 Sep 2023 16:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694621648
