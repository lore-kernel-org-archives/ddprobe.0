Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D473C26
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 10:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6FEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 10:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677234305;
	bh=wFxRwOpK6SsgTnzk8masoddaEzanCwdlxS5+rsnJ26Q=;
	h=To:Subject:From:Date:From;
	b=EH0Zhkv9f+Zl0GPdHXndTlhVO/MnJtQMK5lB+5ePfn9EvO9z7zO2wxso7SZfl6mfO
	 8Z5KvsRlPu/7e+A7gvC1Dm+ey2DpT+gIiLNz90ax/w83aBlpQdIgBdXW/PINTREa0U
	 Q8Is6FrsHUHpjkaw1xv9uw+rMQD+xP+lR7It2ADiwPC+tBkugYJi9CSuxvjhTa/Ppr
	 csbBrZqk35UByg6poKkchIRknVUdb+AyT8BH15uZHyhfR6nZWT3hYvLsunYMX3vRl6
	 XJ18MvW1m0Q5t0gjogMN1pI9ApsgM8O/3y6Cl38ganRhciZ81e+04TUO+Xw6Gz7EAZ
	 olm3S7j+N6vAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C192AC61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 10:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167723430577.22977.12929789750538371221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f1678025a603b07ec4d11e40fa698d893c283cd947fc05d2dc4ef551dbf1e4
Date: Fri, 24 Feb 2023 10:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677234305
