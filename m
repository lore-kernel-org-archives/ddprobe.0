Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DCE612F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EA7C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665618053;
	bh=Xg7pvCW3BPvGIUKG+bS8bcvtT3MPJGUetQtL4X2I3L0=;
	h=To:Subject:From:Date:From;
	b=H+hrYn9SZh3FqPYMfJsJ0ei/KF7Y0v/r5WL54j92wdPyfd11vQuPr4QRCT/NN7amY
	 sLEJEJwmYRc6RyybbGV3aM7mK2dYGozs+HTViI+WEwih3UJMrKGJbR20yp3HLVhMUu
	 B8KNweWTmJBjH2aY+JGqWcutnMzGSGYNqx1+Qqaovm3JwPJQe3SslX/KmcNAy4Vnnu
	 ffulrQ9sYZiHMYzTts3Mo6M6astD0gVsHpCVzsVClf6JFm88cKSr2GYmXzYEA/Ki9u
	 3umcet+Lrms+8c/mqLtcH+RnJwN9gvJSIjink0V7BUUNlz4kvuU3QtPnCk7x+TlDGW
	 kwPZflgoZBSOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574F5C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166561805334.12029.8913787676423358889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7c1a822dfdd54620cd3f419f9a13fec4cfc98eaa365a6008ca2309ecc5cb99
Date: Wed, 12 Oct 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665618053
