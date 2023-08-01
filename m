Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DDF263AC
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 18:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5BDC433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 18:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690914728;
	bh=8Ur4tdhVHl62DaxGfiIP7MlU1e2STRlxHaPj96zRwG4=;
	h=To:Subject:From:Date:From;
	b=I38t0PLg5fmaZofgaMoCznsJurlXbRSOsxhsjdLM40HNVVzq6iwH+zL3SbXEoo+g5
	 3QCTsu1rzk45G6++JuvIvSr2jLD4zcuZRShF2ABbFixwUqqDZqnWhPMrkDTuBnOOu8
	 NE8hlhNamnNP/hDE6Ep968eyHOeEEzSRCNuKumLpkuWiWkDKAAUBzdQi1ldBjpPuO3
	 iheKCV6ccTeFN/+Dnq7pjAZCeLOz2nv0mfEiEsYts9bhUhdDnKFqQyHapY3reBsz9G
	 p2dW9rAkwMgQdxCk9Vt+mmIWnxnJw6RFaWMov4sNTKcRXzaLC+6YLc7Rf+JtRNHlO/
	 PoyWbxOQO+Kbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67E6C0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 18:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169091472873.14992.554887885636168909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee80158c092798a9eac805123e928ce099527639f0d98a4deea78c68e9fb20a
Date: Tue, 01 Aug 2023 18:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690914728
