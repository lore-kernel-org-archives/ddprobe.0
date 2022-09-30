Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BB71363
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D8DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664502053;
	bh=AFYN+b8Cl7GjyR44DtRIzDimD0iwjB2cGcmn46V8fsw=;
	h=To:Subject:From:Date:From;
	b=hjZqonmkWX9UA8gYoj4tjCoZ6jXqaHh9jDR9i3nBXeGNpeSl3h3N3MyxD1QMZoG6z
	 HRrdASmuQJKvrhbde6nGn8l+o9DSMB2I/dWJqacs1l14+37GY1nQw/3TW5xZ0rRt8t
	 +eifTw/fo5imBeY2QCPVD6lt4CRzGaahEN2vBSCfdSb8kkRfAeeS7/KRpaoB8XyNOo
	 daKmUrlERdfV9hcv/qy9wsBskI5jIyY4cwYyuRAzCDXb3MrZGzZ7NuVd+b6AD4k9WB
	 jZwgBjCTEFeXfyeo8g/VD6BP3+nXh+UjI3cqxkVfDB7cc58WCR83ftz4iGvqBsOqJ3
	 y5pQXAhkX71qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55CF7C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450205334.4396.14055050568314780880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703013479c162761a04932ef032ccbb8607c3c8f90528c7aa42bb54785e8ffee
Date: Fri, 30 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664502053
