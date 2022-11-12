Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6887B
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F445C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668211854;
	bh=i8m13bD7h7PQS7OepCcSSKzQV85p2+39WPMgEb304jI=;
	h=To:Subject:From:Date:From;
	b=DZOFkIs/XHKKe5Ee8MFKejXjhP0BjA5e+39n1dxL8U/yPFxPWNDxvJeUxtO7Gs+PT
	 +AB13zW1i75cDjGtGvI65xwn9J+t+3j3vX4FJVpD1TpIRQ6TJ9PcHBSGzWm1Y1Ve0N
	 jH4nXYYfsrp69Xn1aOO0H/hK6F/nV8x25PwJqtXnlSPGHUeLIfPU+rfXqTeT9zYJRw
	 oXy9qLdIYSlDRkp1plOVinX2u/BrQVXVMTfKDWDeD19mNu/r5Xh2MoRe9WveihkPlS
	 u7tYmtOZu7o6Y9++Pr/caI7vRmEG6wUbRJTZSQ8H4/LWrBm48TUAJZL5Rw+yepvn6K
	 N/Qtuf5HGrwSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53765C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166821185433.9017.9475931427107526660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773fab428d04753eca517d9df63efabeccf24a6abef8a9269aa7f1b19eb43fff
Date: Sat, 12 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668211854
