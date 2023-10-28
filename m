Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0A9394
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTgWQAaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846FBC433C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698461896;
	bh=j9GXyLH9ZALsh705qSRolpXPHLlX1DPRoKkQAxzsQqg=;
	h=To:Subject:From:Date:From;
	b=pTgWQAaDbHREsGTyeapHk2xUQeGV0nwaiqgpZMgMaYYb/46BQvP7+/qgaSFD9zx/x
	 y6qpoLF4LTcINbLqZGPPBfPqrsqGUmBTi+qlP2J/poYUffFgyutXC2GYKpsvu4V7fI
	 PFuaM8li54gOtM0vBsAla0haqxxWCZqxYzOWBotwEkomW44llDFXBXYLBkjX5Ki6Vr
	 0VU0DVHLFqBSvmsUPo2H24lARUDb4kgfy/U9j0QyhN/sr3oo4zISM9X696BEUSouwh
	 TdhwYrUBc588NO9YSZO+3TpJSK/hzyxrkJrxX/TF6y1mavMANe5MbYZ36OqdoMEQOc
	 H9kK39dnguVNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65313C25B70
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169846189640.7571.7331299282152298968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74031e555d262e0b510a62654239a90dcf7354e47c0b645a2ed299d2ab4bf3e2
Date: Sat, 28 Oct 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698461896
