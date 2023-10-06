Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9949445F7C
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 23:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TD6umVLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26E49C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 23:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696636029;
	bh=SeTXtw2K3uWLVGu/6plJ8dKM+3+WOhd9NDT+9Uwh3Js=;
	h=To:Subject:From:Date:From;
	b=TD6umVLsZS1GeJOgtg0U6KITX6pTqx18jCSn2YVMexH81YOLx/agRmIU4uectBGdk
	 3GFZssyFHQFGAndpjYjlbshXOPbLkpU1ZdfwM30ELUpV3PYR1TwmqW8c36Hz86ZIYc
	 imZG4dLedm8aqNj6pyyFGEKSzteSnjPxILrm3fSEFJ+jwiBrmQjPSmXe09tZKLeLPi
	 qkpT8AcBPieFoDzuYL9mRKF6dqYHC2e4PqLExKvTWNqR83F0xxIXdxqHkQJvvNu2Ur
	 lZRNyE38uTFT/p76I7loXgaOIXvoRQefokihnqeZEqHwRXpAzL7Ru5mwpLzIF+M5qq
	 uhIDwE2YnTUuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E408DE9413B
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 23:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169663602891.27398.9609750272945548943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dcc060f08cbc83619e2ae47dcb914a2bcff8cf625eb95cfe2bddf8618f6c3fd
Date: Fri, 06 Oct 2023 23:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696636028
