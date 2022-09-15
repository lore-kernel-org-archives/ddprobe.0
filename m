Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD736184
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EA3C433D7
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663282853;
	bh=TChkUgkiVYeb53ZXpewLArnFzkrrIoDygB8xXzZiHv8=;
	h=To:Subject:From:Date:From;
	b=UtUadATeTRMb4WOJ4UjICsTjUg4HCt5akAEIwunx/u5YgKjaHnV4MTHgw53qXqgfg
	 3/ih0GtmLpE52QQaiJbKJugSteDPrZyqRhJHFWMwZ5yNl9axnZVIoHjOpqqgzgMyXJ
	 ioXsweCYPlXWENLWoRVb/ePS5+xRszJUFtjoeDHhqZ0hOr6pM5gyjrZNfAY0OAfsBK
	 hVDzvTfd3Z5/7I2e3RCrXHgwy5vJufC/LNOVBIgpwTnq2cy9GjnzCJBnlYGGHZF/8u
	 MlqH7PF7XDCbX9/Fnq6KwiBQN5NoYry6rADMoZLwmH3gmeIHIRL+lY3EVVO9VPi8U5
	 2FipYEeuJekeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A008C32771
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166328285335.23604.5216604482954415033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b736c261e16c44a7641d77cde929c7c8d086621c86825d106809bacd52dd5362
Date: Thu, 15 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663282853
