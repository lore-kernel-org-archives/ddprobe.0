Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203F9659
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 07:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D1FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 07:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675148585;
	bh=HkmO6K1S9pE71dkbwTE/wZP+3XY54PIf18yJ9f5BbLI=;
	h=To:Subject:From:Date:From;
	b=s6oBMprz8bE6SvtDXdRIQ1z6KSMdkghSQVRcv+3vUCDty9s+C8rZIk0Pno892LTW6
	 SrX+z592HDy+zh3TohVQ+++ZQmIIWArTv7lGX4D/WrZsQY2e41EPwUxrXaxtR/jsnm
	 ff5JsFgUGFeKy2xEW93EjUtJz9kWj39WbU7ORWSIw3KBiv6Jb6eZ2DrQi3F0ucsm0f
	 PwfdIgCLfziFrq3tdhvfqRuvgWfz55j3mY0x3q7DtCjsetZHfBM7qePqpwfmu9pKhy
	 mb+PQIMO4cKjlRrSUcRIPiF9faP9y0Q+koTdkaa87Zon0dD5WikO9q7Xzn1PQOkFGZ
	 K7lLPKGEarggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FBFC38142
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 07:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167514858574.24689.11797585622953912153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5526a1edf5e939ff284aba694a414a51ad96ffb91a442b72b4cda6f7bbe40a
Date: Tue, 31 Jan 2023 07:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675148585
