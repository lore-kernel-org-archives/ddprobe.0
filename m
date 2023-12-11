Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D910521108
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 09:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clMKSLpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B40C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702286297;
	bh=R8kVEjk1Dl2fjAljrHsC0kORGKb1ltPpzo/SsY0uMeU=;
	h=To:Subject:From:Date:From;
	b=clMKSLpYMAr1HNJneTsvnOF/AHpmXKhEWrVuP/u/3F8EKCDawpadla4jhpZHqdg/n
	 GArIKqYF45fDfe95siXrZkK4RLmdQNC1K/ZiFqINx5v2q5OP1ZTSXslOQsEkg4b4wg
	 9zWnME0aUa2ysBYNLrOC1q8NGBkwK6YKihyoUhpkyMffsRoinWU/XJTqurUSRjUtip
	 Tf/lIzYym0SoP08jMUy7pFIeHLSTCdLNhwVm2MUtw+KUvg1IrDWqjawmUJB3NbIV1q
	 S4FcMppcCxHxPrJXuGVGRaNtMB+vrYHD5u1dnW9SwRHjxmDRoR42CtarKDytCDVBo/
	 m62NHGmXVoMaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFDBC4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170228629638.32687.16087382654400383091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b662828772b4480e8ca6305bb0a9f50d0d68b797c188f3d9d6d47dd0bb227ee8
Date: Mon, 11 Dec 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702286296
