Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0850718EAD
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UT6Ld104"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7940EC433F1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705330096;
	bh=FxqVachBXmvL3D7dvuAcxbXhsrI/RKtXLwSWl6KhWA4=;
	h=To:Subject:From:Date:From;
	b=UT6Ld104dshtAQRPdpjTZrQ8nU947IwmOPsW8u/9VV3q1KaJNxLe717H9ojJ4JZwl
	 w9ZaHIRV1nHbTls16tWzxZOwMy5fGTSMXkfZPuibe7TFnBur4yG2sBCDUnMO0Sj9vN
	 DvKcHGb3DOMwEtKtSLr/2MgA+9WCYwGIpjzXQiE2gSduHpMjqAno3SbbrUtBQmXnTX
	 oUCKDKIc0pcLDPZ7NgfscCVio10XBJrLqEkUJAWWbuOvLtfzlsX42YnJ1X6g437lHA
	 gOWHFT05sCHuBxwEis9KtanbncyYnHsIOGHKC+Rm5vBMKDSUUa0Pb3jlaeCw9w36eJ
	 SW9fgD1ZxBaxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE84C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170533009637.20461.9202524291238762172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7872b300f446724515f9752da7fc38565e3c5bd032487a07836f2128bce917
Date: Mon, 15 Jan 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705330096
