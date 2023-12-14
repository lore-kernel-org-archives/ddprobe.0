Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123F215BD
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNyw2unN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8057EC433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702525096;
	bh=N0kkfFRW6LICdMi+kqvyhqZ8JCN15nnKQn5a+XzqXu0=;
	h=To:Subject:From:Date:From;
	b=rNyw2unNujpxg0rXYXqyrywlrPuf6q0PV+X3tXDp8lEobkwbVC1kJEAdgTgLAasKy
	 vxD7mzBo91ULUHA/po1OMN6w3G5BxwypLnSRtsFdD4AHVk1RS2B+y9GWBK3D4/lAOo
	 btzfQE8WU+KIaCRTQ1SGbX/LxSDJD+O/0+ldESaCgEv56dYwczGXARQuOfL9rODEj7
	 bDTmwip56VU9CofIt8W14ZNe2402fd2e9TOR4yn2F+8Q61UFJa4fe1lPJDnClwYU/e
	 vWC+khCdCVNGUbSMHLIHqGQriloPBsLtoDqGruDwuJ/h8vUwdf7R5Ts9CyN2i/P0j2
	 SugxzQUTa6+8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D19C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170252509637.4918.6512638592273754023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911834b6f83dc2ace0f3b4c99c8cb35682f9bfd8858e9d9aa3228ebfa7caa7b2
Date: Thu, 14 Dec 2023 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702525096
