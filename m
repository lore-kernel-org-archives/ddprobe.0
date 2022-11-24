Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2F5823AE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B0CCC433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669282254;
	bh=mteh0E44qHbV1OpA5j0XhKLW1QF1ckAZ3W7H4loi37M=;
	h=To:Subject:From:Date:From;
	b=gPERUN47hcTv+lWAl+kdYZW45AtMlp+gVR8aALOzEBrHH8MWRGXpX87UUWpcr7FcS
	 Bbacere1CxvYjj1JlMCJ10FmuByEyosTacAFtmC2vAZQob77GnSmOVWctEqsQLey+L
	 RcfFUtrXPaC+dWMO1l8KzJFLxnI20p4uHVb+fECP5LHgo60Ff5pvopxlIAY79523vT
	 2iLK5aQBs+FBntkfF3m1CHbTMaOKMfoU4D5rLsItAKd78gccpytfXYjg72yw6wUCkQ
	 2sqfrkjvCUUs9+nLnUfoQjgk7wUZUHku4AsJHhrhBE8150oQ99s0+goGu329H92z3O
	 a433coSDCMAFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F1DCC4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166928225431.23729.11012216594606653032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60814aa89c30486d8f6228ea07d0e0bd3bb056a572497970fa5cb5ee7d7d20e7
Date: Thu, 24 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669282254
