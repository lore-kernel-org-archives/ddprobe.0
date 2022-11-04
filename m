Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB4DF7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A316C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667564454;
	bh=lkhkq/pxBty6wJxzk6okToiTed8fiUAhsMZvp2Tntzw=;
	h=To:Subject:From:Date:From;
	b=nXhchMGbBElVvf23UBb+hbYLDJ/XgmAoinB6vka7xCgocjuxv1Kf2Xk1ihicIRuwl
	 dU86cM8WO5R6CuDDHvzMhwVOvq+qnLCul8IlQq2CQqCCPyglXPfAVt4E/0Fyw8PZli
	 QDYtfDD8baGJV7MNde+y4oC0NqPyKVG3fbSxHZGoSNYwdh9dFPtpyRJ4ejKvIOaH+T
	 wN7Q4fFb3/hKgvCmoByyxffF3rI4GjiWvyxRR+WWon0uyHtzHVjxRGdNUKuXIXsPNR
	 WaDQmpkJQ1dF+AFzlxPAi8mXwCAE8HpZSwp33D8Y+DBSbg0OKLaib9Wx8dITKIOCo7
	 WMND8C7eE6DXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522A4C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166756445432.30450.17018300608948812710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc25fddeb0cdbf5267cb6db780c38e5629e016b9ab1c4fc2430b1b56d66cc9a3
Date: Fri, 04 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667564454
