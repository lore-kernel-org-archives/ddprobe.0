Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494BA630
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 04:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BB0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 04:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681445465;
	bh=jb5XkFL7TiECnW9KVBpKL1XYQeDYxRsO0CpBa1+JHZY=;
	h=To:Subject:From:Date:From;
	b=IapQLNWYaSgTEPS3RAQtqKQ5UGmKEj2Digc36W0S/AOkNG65jFAfNyFXVUgDgJDtU
	 NVR8ddQQhyeRMnpmNyPLmqHXEIxRpXNBBEcNqLapEfwHb/nLgMlzmw2PrRdIeTS7L0
	 pw+eJGnfewO28c4sERrF8MADHOdmZsrebi/4rHdrjJyV6dQtigfqAFwdMslKbVgPY7
	 n8cSxsADe7cRJZLxzLex478ZtQBWvFGC98Eb6cEF6+tJiboGA7pyYfNSGWILAlDQ84
	 ReOqTnvikjM1NzUwsYu+Hs2HmPzbOASjukBCJJqKNoBhIgdeoPfprrFGCvt8cCwhfa
	 MXgSEUdcSRgig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C549FC77B70
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 04:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168144546576.28428.17748815646888715697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d54ce8d43d34a481276b430b31a87555d9e8fa8cae05028064993bb81ccd7d
Date: Fri, 14 Apr 2023 04:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681445465
