Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335CBA94F
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 22:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E116BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 22:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675203245;
	bh=yIeSJeCYMssnSqFIN71eWjgqs/PN4TH6hFbS5cS+Qxw=;
	h=To:Subject:From:Date:From;
	b=nz47h0wk9AtexaH69fG67wc35j7OYu3vMsUMca+Hkpdqr+ptyJV7MolYX9Ym2No2z
	 YsqwN1H+s0k0M6Yx/u1fXlNExW/jtKZ+VpeFwOerhAgB85KPrJYespqeApug77u6tU
	 67rVpe6Vxiwl2nP1wK+0NzIlRrdj6zUq1C4GplbpIFxX2h582bZayBlJqRQ1Eh0zOs
	 4HAQ1LnG8Sq/6CYAsrUWMY1le3Ndv41G/bwmhg6DJuM6fa4Vw+c6L29VX8M8jphDa4
	 0ZoR0UxSw8/xbCTsTLAWWKEFFryoQUqC+D76ZUIkdgeoo1D197BTIvvHvTllskN2Fa
	 xyAXwUHPxHtQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA721C38142
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 22:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167520324575.13759.6994923584556097290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b430beed87b8aa703a989d0577384c70c428fc59a870c59ba510b47bb624e1e6
Date: Tue, 31 Jan 2023 22:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675203245
