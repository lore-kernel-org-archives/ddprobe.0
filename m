Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6089A15A6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 00:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5193C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 00:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688085788;
	bh=HIzUhfU3FSWX1TiiOYX6pMdL62hogE73Ifgy/uqFYys=;
	h=To:Subject:From:Date:From;
	b=E5N7mLKKVqg5dsHeBHOjY5GnPi88rkjeDKxodsii6x38C2RL0yjileO4cdWLVBsw3
	 5ulg7xXVhfupf3Rjx4nUEJ4AshMob/xS6tKBX8tJD/LIO1rWmdjumd+MePMCmxVdDA
	 MM2Xqf9HM9NKkzMiFMyFjrd3TSGSTkCcYcAxZNA7zGuDzq5xJbXXiplFf7JpTJJuCr
	 Wn0i+QKGxhx8CkXt0rJAA+yM8hif0Evc0BOyr7FQFFbDkBqZQtsGZwpFbBC/GC7A3s
	 sOmBGRDcFYqUvoB3mhsYgy+HV59VfiqVE22pCJ1nIxi84xoM5Y1HZMfHwpvSNEE4xP
	 fTNgl2KNIKLaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24C9EB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 00:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168808578871.25019.2298199045958410931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6658b69d483047ed65f1d16ff8ec1c7f0b08815578315e8a7355db1ed7bbfcec
Date: Fri, 30 Jun 2023 00:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688085788
