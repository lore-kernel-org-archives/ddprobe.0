Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5901107B5
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DAD2C433D7
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670110254;
	bh=xApO0xdUosJQjdCeVA9rVe54TJPcscPrlqBzishINmc=;
	h=To:Subject:From:Date:From;
	b=Dr8nDLawSgb0Tu14/YC3K1Gl0QkT5JS0QBqodpKYmZ9B9f7OXHy2rF7lkFRUba9ty
	 91Hc9wzbD40oDuA1GHvleoD2le1TDtcx4vCz2iN5CWAtiTX75FicJba450uizKc397
	 DWgtx3Rkdqk+W9A3qZyazCVqJ4llfbhQs1Tt3/bKa85LBgc7y3oncLEAhXl3ME7fR2
	 xzVGEUzqc9Geh1OsD/hn+lRbSSc0UpBbGBl7MUtDsmRvBneV7/EiyhGUQDets791ea
	 +du5iWJG/Biuk4/iX64YV4kOc9eqANLVcyh4PEGl3w3mYK5WvXdF52befUCxRW02F7
	 TJeYrW0Xy+j+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602B6C4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167011025438.27667.3212896019120912863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9842a408177cae911641af9b5d0e4c9e3b01516d440478ef4463e9e2fad33d4e
Date: Sat, 03 Dec 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670110254
