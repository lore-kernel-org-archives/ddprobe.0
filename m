Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6A1BE59
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 12:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A33C433C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 12:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692015788;
	bh=FL0nzZ2e0OaSQcPLjZL9cK5ZpreCc+cokSYy39OvMFo=;
	h=To:Subject:From:Date:From;
	b=hMVFMoONb2TaZb6FqCGIh8ENmaiPZLLrXRg1zR7Hg6UBK1tKKUKg6D33JkR8Km1Xe
	 mIH3LDNXR6Bfjejq4Lrn6sPiebCC4cIeyjwzEf1s78To232yBsz8DB6WmRyYHUkTGV
	 vHi2h0VUdQ6RKtUQsiTMHhT2dlKzIRBzdB4mKWVQyYdWozZ/4wGP2jslfDkqrM+L70
	 RkcbLzgWvtbxPr4oV+Ha1XlX5YJxpS70mwqV0K1nyHjHNGFLSvUWZ5IJMWk2yCVQFM
	 WXaglks/tnrT1t7JwMf1KLspi5Sioys9qAER9VHHPVHxOCBUCL+3ciM2rSoIA2AeGc
	 RiYAD4pNqZu2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DB6C001B0
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 12:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169201578865.4690.9695904909053015642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472d6375a415a6a46d4f0d6cc72e528790e3b7d633a42d4c46b6c1db158dbb57
Date: Mon, 14 Aug 2023 12:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692015788
