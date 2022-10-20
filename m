Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2AE7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70032C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666225853;
	bh=/8YS+ZV1stCRVlPQTH1vKLfHMOGwvpmTnxoesnrDecI=;
	h=To:Subject:From:Date:From;
	b=I6Q2jr252RIvcGSDtSdOiH2pK7G47oj4fPH3/ckT22MwiqCwxtNGrJpQw9rYXHnTB
	 MPFHLsGh21CO4328dqLe4A+qTGcP0Uyx66WUeabqA+M38rtpOIykWCeyplRdiLE770
	 QV5Qp6jFsoxS3wd9ft3c6PVpQU10v3dgDby8zQn3JOlRVOfNQdNUnoMprNFsEERL37
	 QbU8p5xJdSpBIPEGXIya1dJp3lV9Yjv/XHnX2FXy40LIbUY1gVGKqRncRNN2C04HG3
	 JCRnlrCHFApiCzR9XDnq3wEhrCZOXa8ax3kmKHS28puZp7fiqntzbQS+qZAUuSKay+
	 oNwVzqjAPzBvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558CDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166622585334.21523.18416304301357527433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbcdcced40d578a3c9f747509c8459c1d73b3a0e7bf864df5fc03e68c6736c9
Date: Thu, 20 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666225853
