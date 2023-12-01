Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0874520B36
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhBT07zO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A17AC433CA
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701428296;
	bh=qgqvCLcomBYtJNMHAgu0o+uhXnsvd6CgS6qed0a8n2k=;
	h=To:Subject:From:Date:From;
	b=nhBT07zOoKer52iNMV7O3fTZ4KyVmXj6DpyVmvza//QNCavB5PNH7kGFrsWM0Ei/m
	 PpAyh2n6ctQfk4/w8Xx+8y6JHxVMqEIApDqHKJMfvgagP8pSops46FnI4OkP5UpmrS
	 OvUd2JEQyMONo4pK36IXgOBPDULuQcrv4pJdfyRGoFKE8YjHxqoSMtxP/bMum3D5CK
	 U54PF8kOBWe1GCTmZdls3jGyxu8F11C8yv1b46iPsMflSDpUfv+yIlFMxSTwjgGA2O
	 UnwsOJSpsfJK8qqP5we/hiuJRQDDLEMZ+aClYZQTOg3X4Hqrne+NVtCDuJny9i5jA9
	 sFqUstmTRstdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD69C4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170142829637.8319.21452770471524307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27240a7b8f0e66c66428d33f5d860a47ba3b70a4a466ea6638ba2a0f055822e3
Date: Fri, 01 Dec 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701428296
