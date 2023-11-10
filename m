Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132A21D55F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhqrLf+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A88AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699635496;
	bh=OggHVMDmRZPJQ0khAc3RpsplftF3Ecy1xwEYEA00JoU=;
	h=To:Subject:From:Date:From;
	b=XhqrLf+2KA0WO67iiF3gpyOYps6xbBb8uay0n4J9Pcd/fNxBjpY6ZeydupODNy15l
	 J2Bng+H0vcuTUU45Kt/RWLRBstyjxUthwDbfWiKCgNG0o6P0BRC9Udojb87aGMCSyN
	 mZwXF0A8sPhudnXLP+DkH2HWFcIiRn89APZ3w7qX0JgiArL8piCrvEQ5FqI9J19Vxh
	 mIOxKt7FV4eGgVgw0Cd5nPSPfRmiQE5+/s8S8846KBDNe/OiebwIQuRlWBLCOuJ7r3
	 RTwCS6M9pJDi3OkYigIoLDwEkIgwQDyqmCSt2k6sDYPZ6gWGwbjSVQu1SUhKBprr0v
	 Sejt2dA/Przpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B629C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169963549641.10776.4412702364295496964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccad6f0b6213133f79335f32eedcc94a75ef5987c231278c609dafda706a52a0
Date: Fri, 10 Nov 2023 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699635496
