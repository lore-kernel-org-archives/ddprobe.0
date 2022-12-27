Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD0B29A2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 15:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92CB9C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672154488;
	bh=0v3HDLmuXDIvayu8RTtrfAsHhb2FUX8/Uxk+/6Zt5XE=;
	h=To:Subject:From:Date:From;
	b=kQccfMfMGtbw+hly8kmZG75HFvZBiV7U5D9VnbCPUadVH0H7LJAwje8TC/+jBRw2u
	 Rj3NMB0+H5qCLUCvRY2vOLxH3KXbb6fZurcZJx9HsIihVfqtA1Zg34WzBW5gn2mJ9V
	 TXPZHlQq3LsNqLnrA24vX/mEoYrPi2SlpUKNLdxHWwgnLNPv+ZLH+QcgGEG3QD3EHI
	 2VbP7aDEzXMy1hEKlnh6DyfLPmY0v9POnNgSLTfukYSX3GjLxk6aCxD0deG8tX6YUr
	 kG34y3FzxY8yys/3aUVq1cJJPX+oeov4Ps8rDWXGrhEtfG/h4bT4dVCNUjVx66KXZj
	 A3R2vpRFBJwmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 718FEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167215448742.22984.12231309839607462963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e969151bf6b32500af21118f67321e949a111a778cc069af6378623ca313cb1
Date: Tue, 27 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672154487
