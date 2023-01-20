Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005CE17C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 851D0C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674177687;
	bh=IJO8Pj+nqKKvrP5nWnHOVdVSNki5HCgofTDVH24Cgw4=;
	h=To:Subject:From:Date:From;
	b=PMmKItRQPMDFaUbXjoXURZzNus68Pi8w0gXKOhVlPn0PWZC8zi3SNFACgmGN5cBiO
	 Y/lwCdankdjPimJki3psbGdaA+fro+cjk6dBosGbFirPF4aHQCwQRMfxcGYK0JoMqi
	 CUxsOCD1dT0R62cHuugqBQoFyXM4uU39qJx/99imBqrU1tI44zCgFf3fIp18dijtSm
	 VRVANkt2Qv2fGdWjJf/U8smLg/61pMoRaX5T5hBMy8K0V+HYvqYkktFgBCX2ey+EFJ
	 gCNE6Ek1GL+CbXDImb0+4DHckdTcbW21QCckfArKUtCkGE3fwQ7F3mTq/UGvcvrE9f
	 d36LaZ6pzj4ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68DABC004D4
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167417768738.27502.16142095517581298448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ed9d7d0757ed248a3c494ca3a6a216095f011b729111138c2a227840960f0c
Date: Fri, 20 Jan 2023 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674177687
