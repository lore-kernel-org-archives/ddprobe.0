Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47102361
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndPKO3to"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B119CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698626896;
	bh=zOEcLWclMR+a1/+wCMZWeotBcSi49CBpEqR8GvfA4Q8=;
	h=To:Subject:From:Date:From;
	b=ndPKO3toCTZBHmI9u0v9fy1N9gtV0iUi3jgVCevP8E5bV66BnmiRkIlzCJCMYdzpV
	 2Hfl/OJUyl9l8F0Zww4TgYOp+EZAnb3l9O8ifvXY/fUawh/kmKLfp7viSWQRNFVm+D
	 NSdDIanSBfRGW7ovqZc2gGLSm2xOUKvL/AkKy7xqwyNPxdkStong/CtxSsv88UMv9s
	 8ljQoHYUeXaeqb81IfA0hSQJ6P05RjBE/eQtP5vfXqK0JleRB8BaaEh/J7Vay8q6zA
	 CX0j+glvO+NJFcf+V7W+vFtbq5BKzcvrImBUnq41ZFm0qq9VMziduLUUSOIfPatBZq
	 fPEONnydipHqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E056C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169862689653.31123.1714910744876613016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0d6ce6a20a6814fce020df545b0794132ee0dc228ed673a2991f5faf5be707
Date: Mon, 30 Oct 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698626896
