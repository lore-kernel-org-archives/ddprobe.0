Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD88D535
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnV7p8D5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94952C433CC
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698731896;
	bh=lFv4V8Zv9nEtVBta4I3IGxIaMADqFVujS2ga2Ws7wnA=;
	h=To:Subject:From:Date:From;
	b=OnV7p8D5vBEZK2YmvjhlOv+bFGw5fDP0xdDC3bkZ+gq/6PmSY9NI74sf16w0IK8e6
	 kLvPl2HgIXqFxFk8RWGyroZIg2T5w4UJ+3L6dBixuMxepDjGdiKCex8QtBltYqHNY7
	 w2rI+89Z+9XD60y0aexVLh0d4A/+CwRw+lTtJ/Dt42EWgEckPR+gXJu7iVTOg3sK/x
	 mZ2cW8ZKyM52B/Gak/dP2Gdj2B3iQt/6fea6rkaaQhAysEKBP1syM3Q9/SKDUSqJnv
	 iKmifFQcAqTkHd/84QkpRNF7v8i74XeZ8iG8RkfrNF2ZCcWaI3RrVqkI8u+JCAqrDN
	 nu7Qt+yX4Vsmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70E47C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169873189644.28664.4246604776276507180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70edf44499fbb54ce79da0091ee51e3d188f9595e3e52127d7fd26e531e3baf3
Date: Tue, 31 Oct 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698731896
