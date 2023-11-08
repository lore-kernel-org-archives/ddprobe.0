Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B4D6116
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bo0ZKe6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 916F3C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699417096;
	bh=h1hb42L6cVHPk1qaLH46kegWvNoWCmK6CSLEQveijac=;
	h=To:Subject:From:Date:From;
	b=Bo0ZKe6WWnCD7CkWBcZ+KfMYngTYfRuuvk+bOIP5qd2scig6zp5sXSOqchrEmW2nC
	 dYF6jZNQBoFyVHZLiaGUvtbnaIZQnvx9j1uvbBK8woO6mVFIasdGsTcFuO3f8uxprE
	 dg8ESPsdTRt2lgHbb12orujmAr5Eb85RcW8vnzfpdywLnZHL/SYox4B6RMgVu1l8ny
	 g5cxDZ6ubq//hifHb9gzDrENc8qcFuVnb1SEqou37AqFHgHcsQzhXkZNtSKyGlSIRb
	 befi77IC1m2eMYG+g9jIIXGYQEsndE7HUOmV/O04UM8xGtB/vH+t21kbm/ZnyNgAvm
	 2vfwcaWpB8IbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7213FC4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169941709645.8750.7876977007369862407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fbf04aa1d7f59cba6bf71555a5483628f6ccbb34e2f3f3581bed7b3dc18f548
Date: Wed, 08 Nov 2023 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699417096
