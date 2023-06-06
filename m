Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D32E37B6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 13:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4370C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 13:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686056525;
	bh=JO/wYCp8CAIxo3iq1Ar7/Hv83FXrOdG3ggtrIYp+TW4=;
	h=To:Subject:From:Date:From;
	b=oqZ855er47/9DuHU0xJ09LvjLHhho/TTwwcGYFsxoQAtWgexXc//S1yjKN6oVU1IE
	 w4i5PPsHlJe7Kgdz11u/CMCtyfNzAj7wMMX1+pDK72DDkXta6eJAZH6etVTnMwc1a1
	 QOt6+r/nmPF56jleuvIDd4ctn8EsjwGM8Lt7m//wTLDEWjzovgaUwc9fM086as2Y4K
	 c+hEtZzvZZp/wKVURp3TsAOSWqVTK5tWbMwWS/iBtKfd+Y2pT5xc94b3eexs93VhpF
	 ZCSPb+TtQzpY/J4m2v0VtR8CciFJR67EqMoZbqitKgEyCOD5aPDKjPptgyNOJ1eVKb
	 +Rg+4zPsMEFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67C4C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 13:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168605652573.30537.13584911001000542660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa693b28b27cf5336c8c882c217be2e2edcbd2b3a7d19e2424f66514ccf5360c
Date: Tue, 06 Jun 2023 13:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686056525
