Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC1815B1
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9AhI+UF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81ADCC433C7
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699066696;
	bh=c4ew6eWvFdkKkARO+td7LPN9MgHRHKJFzPftYNLCAV4=;
	h=To:Subject:From:Date:From;
	b=p9AhI+UFQtqwtaOnIT6Pj2DXTcPM10P2ylHj2Zk2NzWA6e1Y8OBnY5zLWr3V1D8PL
	 Qk/6vmhV78bDJPYax1an76+vg8zwrj7MLrO65cEtGwxqoOF6sPeRvSDa6lzrAmlgz0
	 gax9yTjinwXzsZifkykedX1Ab40z8vOgkJvH2g+LZnhrFvdkOzYI6AvkJVD0z3duvb
	 cpPUOdfgRnSAG9TmgA7Rh5jJYoG556HXEDzmTp3R50EoyVCHo82UnhrxVUVb49tSvH
	 KJBUXJMO6IRGo5TH0G32CIF1tyQ3EgcILVzt+zBGTSXh9WuKKoWtuXmtudDopSxVis
	 52SUDokNDnY7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E26C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169906669637.26101.12282858599707805287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4422e01b8a558a81f131273a8d7cc448ecd3e854cbf8515a43f92d0abcf7ef4a
Date: Sat, 04 Nov 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699066696
