Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1889946B7
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD108C433F0
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673825487;
	bh=ICLIcP/BpwEGc3/DNOUaZ9NrWSFA/HU+Hicdq2QZHi0=;
	h=To:Subject:From:Date:From;
	b=u00REu6unBekLaOoQMdjhGM7r8ZijVw9xcHtDoJCRFhOutBKzitJDV/QvG8yh39w6
	 2dHf8SydTstn6VCbrNCUvOJ0Y7LVOBTmxFqJVURAEb5BT4wXzDJPT8QTM+avbFSrXc
	 mjxgF/sPNbNLH8zo59rt/k4WNTYsnkGFWdUvf6Dbj2w+vSouxq4WgUSOm9ov3ySU6t
	 sp9TZSuoBXY+mVKkhWoXemkdl8WGQovMdwJt4mG34RboaT4x+2tIXLVZzE6HliYRvW
	 E8vsMuqsWpZjry0kcGCTlExPtXWMO9S1D5xJkvdcDenMtO0hJDCHfm1/lmtvG7NKfl
	 QzHpnXr5oWJ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B99BC46467
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167382548754.19567.2057337386948212530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ece68c202b17c2167c1a559cd94c9ba3f07568b5cfde18cf52eec891e8282f
Date: Sun, 15 Jan 2023 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673825487
