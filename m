Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF282F2E
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC35C433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670326254;
	bh=++8/a7y9Jv+895gRgTVlFQD8RXG8BcDjD/LWXfGnQjE=;
	h=To:Subject:From:Date:From;
	b=t/e9EZcUDCvhfTuPYBMztAC2ENgnx83o2Mcz146gki2KTUAYgNoOWase49Q56Q+J7
	 1TzUJKPcjRUwlV26BBS6ZAOEBoFQycVzxJhgE1spKdt9T/Rd6OJ6heeJvVqBIgMpoH
	 4aIUltO7F8ll7FjN97QCB3QzGPvjDkNV8P2L2mLGY7DgdEgt9bk9iR8THgtxwOaCA9
	 TQosjuo4g7qrNclNbW5XgONL9QPjJmmU/d3wn3bt4WODlYAC4XCMgI3NmzE7k/oy2t
	 q2s9RArT6elgnpXi3QipAyFaBMm6pyG+qeW5IXaupM+vTDzrT5lvQfPMfElrRTwj4b
	 89yciDrI+7kIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547EAC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167032625433.30054.12291576155410647531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4195b773db2cffb5c3db3820ac8acef4b1f9240cf7ee1a8a14feb900fe0618b2
Date: Tue, 06 Dec 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670326254
