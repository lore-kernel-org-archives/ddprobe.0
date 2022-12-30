Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB8F01847
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90A0EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672363287;
	bh=HJVAc43w8q9qyx8gkzzNDE5BCT9Bt2Ghbuad59A2FcY=;
	h=To:Subject:From:Date:From;
	b=Z/sHWH6pGXzBWyhgtbwVodReV4eA5aJkbQjPRvSpWHzOtYMhlxqvxodvzCkQK+JsA
	 X1BEi8APX9Ai1iDe1DbbPvnaIe8qVtDMAaG+GKZ2ZFnBTRY4esnoYnGVT2bTCY4x2p
	 2LBxlbsZbniM5sxuoF3B+PA5SCNO73K3eSrCLtjVUujLHDTj1IBADz3LadOxg170a+
	 EzhMgCijmFdeJmpilQdXlUuVYJ6E/zQD0DBLpp2DBImV3Nllw9AJrmz/DOmiq9onRp
	 /1k+mPtpBkBaE4iMXZj4QUEgVp6aJ5mtTHWwpknGzV1nQnfbueMlgYDva4nyZMQ4/Q
	 vOGDi8lvKJEmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 705D8C3DA7A
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236328744.15386.15912373890421079911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8526693ea08602c60be01c8a5e2c4429fc2f931005f40011faf7062de6b6d06
Date: Fri, 30 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672363287
