Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9793CCE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 19:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA423C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 19:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695237308;
	bh=LD1/6jY31gLoujwD6VO7xyizAOhsBsTNEr3bTg68X1U=;
	h=To:Subject:From:Date:From;
	b=WGxEzGvOpkAPKtfhm9YcowpvH2YXXAvtFQrB0H4P98btVqs+nIA54BqzQPliQG0gE
	 N029k3xGp0xdgNzvU9RParHzk15zz+YjpseZQaRm54ZmvBJPAWItfjV03z7vnYC2WN
	 vY0G4H0BshEIhGfDVl8t3Rhn51+RRpHBI+Xd17stwq11dDLUCx3xJrqstAyBQu02/D
	 4B9I/+Bs+h5PMmCEfiqDw0E6tcURTtwasnpJkSnWEZwY6iT3TNqTNY5lDpzx+TA/dL
	 4wWV1JrvWXfc5mJ0nM3Q3ZFWMDmqfoKek4P2Y0t+qNSMH3wEp/FPT/JbF9jwN7SvDc
	 PFWfBljBRvThw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62DBC04FEE
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 19:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169523730867.7335.8936992796171866223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97cbb8484c22916830bd60a404659da99a3fa395858f182cbb1ac5dd7455fd33
Date: Wed, 20 Sep 2023 19:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695237308
