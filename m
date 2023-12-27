Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10193446C1
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aidLQze9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89D7FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703679496;
	bh=er5BcL2/ILEzfPOWZ7+S/yNUSC+TI9yHUPz8k70SEJk=;
	h=To:Subject:From:Date:From;
	b=aidLQze9KyCm1IQSygJZBNfqr0cl0LdVVD2c9RAI5cfe0BARevW3xACjMrLN2TlLP
	 fm9L6H9SOyWC8YuY9rIojdAH1o4B2drLI9uwtF6FmKWhlvigZjEPly+vvJ9NhwBVOI
	 SmC7QyfWSdlyibw58YRaxSx9/vSvZOmLz6mO1bVmtd93K5r+ghRMocvybUTtaImFh3
	 Tbr+p37vuPUJh3x1x1r2fLbJLxr3cN35Hy85N84ETq3dsEv0o65iUJ6W11z27rMDDf
	 b7ttVkmFbEhRRVMNTG/u9WkwjJaCLtsYS+kEOHzRC5jiMATaeF9Q/NDoyzac0lGixA
	 zS9VVpQ0Z6MQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ABBCC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170367949641.14544.12226113523765131535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647464ebcb5658121851d03caaf3fe3d0da2c08115bf661f14aff75f98feb2bb
Date: Wed, 27 Dec 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703679496
