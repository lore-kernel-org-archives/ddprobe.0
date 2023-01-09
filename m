Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BAF28ED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95915C433F2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673256687;
	bh=y6NOb58eX33gjt77yZYkhV/haf9ilZ8BKdl4KUUuy0Y=;
	h=To:Subject:From:Date:From;
	b=DtMNSBTykajt9fRzFubbiLdOU7IJja2SPxWgUtKsXrUnLNYisZ3MCl4X1BzE+9gRx
	 +hH49drXYCySx2MIt67PMmfeTvDzfVBGGoYSK3TYWEhO+JNYID8JFqn5WYxcrSyj95
	 B2PmeQOXFal32p50wqUcHlPQ8+KXzCSIebax3YjSs/ZxrXMU6QN4WW9HXg7zHz+59L
	 FhvJssCX5+c4jCmx9j5Kjwt8HaN0ctGVWcuPaWvekd3SYKScSDhfgvQ3dXCGoxk3Zl
	 Y/qcMdc6fnuKmTlEZkL79IvH3SxAi+EAmlfsMiVP9amMoZDrES+ugo0riD+Xd18Kfi
	 P84qU3rCrVTfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5E8C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167325668743.23467.3550192676746062241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18214e952df3900dff5b088f3d3d076bb94d7f579973485a272d993db87f67a7
Date: Mon, 09 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673256687
