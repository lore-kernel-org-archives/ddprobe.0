Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D47D7E0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 01:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DDEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 01:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686618305;
	bh=daz6cwSjDn+QDSkuKI8gBMvig1z+rt0ar374pyFdkxg=;
	h=To:Subject:From:Date:From;
	b=SGfLCOWsThjhoDo9ZZ4pNj4P68oH54RLGqFRx1Grada0oJyYpJs0jOf13fHLXWUgg
	 jOCwVSrlK5uqR/Lvs4T27bTS4BO4yg6P62xsTNYWhF7LaeplQ2VD1+Yn29WBWS9q8i
	 RpEOMTEajb0hHjnmXxHd0eY3m1Vr8Jkdly49+X/QCNNYuOneI7yT3Ub31b41IKV+mN
	 1Lu+kXPP/iSZiRrv4DWtK8CbFOOYjrCTAX4YTL0+oqNSr05n7Xze2JtmsyEUopcHIA
	 5lUfNxJ9/aZSBnxAOkHC3PTaeZ5nMhI1sC4KMyX4vwH+bVc0peeHLJlXdD0GgZ9wco
	 DP4y7VMp3FFrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67FDC7EE2F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 01:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168661830573.15715.12769590784974902999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed7a62e4517009f9d7a3764c2c7361e2523912b7d6482d842c94687579a998f
Date: Tue, 13 Jun 2023 01:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686618305
