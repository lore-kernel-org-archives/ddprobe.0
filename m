Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B94290C
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 10:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D524FC4339B
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 10:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678963805;
	bh=WaZyLeKGHg3lvNLalhAlw6Jim9cdztEWhZqCmVISsKg=;
	h=To:Subject:From:Date:From;
	b=TbqyAQuE6GXEmhgysModFz/WU3Bco/VbGNVRlEPpm7wdPE61y0ED1K1HdYL8epS23
	 jscDx8HP2QnvjFwSdR9glL6jtsXj856H8Fg1EUY3aWYVUT+oXtgCTEbprGCg+FgAXt
	 BE/KrcYT7kDJDf+jRVYSmDVCkbJ3p5247Z52QvZY6s9ph8Iit+TWx6K9kbuFZtMDKt
	 DiBa7JyZ156YAcMDEys7Jf0geSDi6KNXYsPQRvKeDU4MkZ+yK94ZZNQXYdJrE2ieVo
	 RuMD/4PPdLmIv/7Zs8GZ4LQ529aiZkeDlKBP1Cw29N/d9qP4SVqy0j8LiF/esFVYxh
	 ujWh35yy77Y8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA79DC6FD19
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 10:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167896380575.2524.8008321747269461845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a90f460f6c3a927d9322a2358e6952fecc960550bc9e1c3e9c46fcdc7dc6133
Date: Thu, 16 Mar 2023 10:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678963805
