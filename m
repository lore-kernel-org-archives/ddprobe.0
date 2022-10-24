Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECE57ED
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C26C433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666605653;
	bh=T//LfALy0Djff3JXlvM67b+Jjg9j5hByJhjwGsTmEW0=;
	h=To:Subject:From:Date:From;
	b=Z9CQ4tD9EKPy+NlhkrSLbhlcFaxgOqHgBOERl20dXNova3QOu3+GNer3pt06Ixj9f
	 0tTNd1d+B+e3g5cCKbp76ituVeBu2JRyfJrSNS3nXdUGJYquuZajxh2DxbbhY15nTy
	 DlwPZgD4qlg+Pz2jLi7vRlblMN21a6m3VcBiJy09+bG5wlEw/pGfsD6l1Vo67UXwsW
	 ybaIy1KOAezpvMzD/JuvaUczwsEUPbhvOxlD7OChWOdc3o915nd7okOEnazPcEYyqO
	 uMJtr02qvPNEa78MgSAPnBSKYHJ8XtnTxccfZYXcnGTI9brkxmewcUy+klo1oN+XFY
	 JyK1rLtjIfyqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB5EECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166660565333.29353.2768762854860099631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2d20db43b2775b71d06c30bfb06f2d5e20bc02c82a390409036574306d2e52
Date: Mon, 24 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666605653
