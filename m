Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B32382E3EC
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noCLu3WG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B5E3C433CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699358896;
	bh=edbuYhbmH/iur+7zUzPla6eFAb+salsS6iCXbsq2BKY=;
	h=To:Subject:From:Date:From;
	b=noCLu3WGSyvjTTuk8w0HRr3+DbU/mGjMCEtq1vY36n9K/+54CIRBVP86oGtugDvzN
	 Akp+goCjyBbDdXk4G2glKS4IokstCYGXqBmiqjaPrEgZRTKLcRSYCMNzVgiS6WuDff
	 apDSha0Nb6mCwUNyZZX95dFBfx/PlSq47haiIIVkVChwnLBR7RekETPWdxLPK92dyP
	 Waa75Pdjnk6AZdBvRski9OYyJ19dfNAP6PPLKAtlHaptdqaAq9O9jXdimijLyxYp3x
	 Zl1bT1Dyu6shZRU3WTkeDjpcU0BYCNM17+crupPUmsIhR6dwntepH7V32MHPibJM5/
	 fz6X1VIdeQ0Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A1EEC4167B
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169935889642.1835.7585927451008825933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb271688891533d5615b4f59a53512df01f8f3246d7fa21f74f0430fe04c77c
Date: Tue, 07 Nov 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699358896
