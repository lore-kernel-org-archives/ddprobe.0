Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E65F495FA
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPqHMT8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A2AC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702847296;
	bh=hQ6bJh3ubPOOHNl3PGiCcOC3PdsUtaFB+JFf3pIRBMs=;
	h=To:Subject:From:Date:From;
	b=pPqHMT8diXnJvGVzKa+mFVq5Oge/UtSA0TZ6utjPO8aLKrUhwHutsaEe2CPVG9fEr
	 iF7LG86bdE+xjQi08KvS1vg/iOqkzH2r66+OHDnmr+s1zk9na4KbZtXDm9juCMtKnN
	 VWQZGVYZuc4PF3klD2ysYBGJAP28PHnT6f9leYXHoFVszkFY0h1ctdgPomoM/T0+Kp
	 bu8fzZ0YJ8a/O7IlxMoc2W4Ap7ZqxFq9OiAUBqTKOL5PbzJ8XLDqdq78SWnYfZarDX
	 7bxmfBWhJgU9rRZKIPM3Ee7x9RV+YZw4gEibEep+VOM+Va9zsNoexIvWbEEs80f74c
	 zjs4gez0R6JQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF21C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170284729636.3013.2157280020619095844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b389853ef0dad4afac05048d5bb85b4e8a6e3715321acaf1891478d8682b1fa
Date: Sun, 17 Dec 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702847296
