Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22084DDAD
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PITdxz0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88BEFC433C8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704188296;
	bh=Qb5Z0ecRCgpelVhnewqM1t3kQxqEcnv8WiZOeRaPYZg=;
	h=To:Subject:From:Date:From;
	b=PITdxz0SF49RfvuSBaRJqJkYMbi78CMcxFEj+cVDd/wSZYLlCJQed6wEqdvn+ZzFS
	 F/cbSvGBLtNEVJsjFaQrSXErxhILJHzFw1aBxN4jwIxUYwMUN4jypoHEUU7NqsLVw8
	 AMXWvge3zWJm3dP5v5KdNxum8CAcaJThMipywob8w4GLMXJEZCKIdNaJcUk7J5+hDZ
	 N1VDE3Suum7eUsIFlD5M8PycMzSGha8maLcdk0rvTKpSIIqEnDnbLpjG/PcWqOXrTL
	 0cn2mVtC2kddbWd94q/6dH/3//TGZA6cEphCVaYXyoeI7H1LEVNw+Xhce2zEuJTd4g
	 /iqF/hfMhmpWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BC78C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170418829643.30479.5270437739957739259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24cddba9a8e9600978bc1bd8eb75644a9230725c41e94afc687379f8f7f0d75b
Date: Tue, 02 Jan 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704188296
