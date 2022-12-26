Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F6A36A
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8703BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672017687;
	bh=Rb+luu1GccBU0KXsKkMD1gnSqG2/k9XqV/UdFtlj14w=;
	h=To:Subject:From:Date:From;
	b=UnTRocnVO8wu045IjZCh2sXaL3T4UhABqJmHZd8z2GVxUCCH3J4N5w2QwKlCNGdRw
	 HKJOzlQLEfD4kkB3zaZKSn4feDlwtNKgnJJQEq6UpEPSAO99WO40wwFgBTOCnYyVEm
	 z3NUNrNtFKLlBpVVw22kyYzY70op2YZsjsGfkSA6+mkfeSI1D2XOtW+PcSAxGjHc8X
	 3F5htjFlWQh3BQ9Hvgwhb6akOKfA9HkS30gLRDYniUc3Oo8I0v/56UtlooGmJnArvE
	 1XqW2fOpS3d/jK0EmV2/WbH/irQio6K5F3KSuOCVyVuHSR3yCTxp8MiBAIyLrythBW
	 AMvzhFwyVpX4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68FC3C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167201768739.31566.3040782030738158812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0452964eb2873ef9859fb34a5efe23fa743bfb05c8ffcc2ec2957fc85fa1f0
Date: Mon, 26 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672017687
