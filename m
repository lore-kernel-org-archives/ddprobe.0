Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7CE23A1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB63C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663581053;
	bh=iodY2CRkylnLG4KQ/EwG1Fw98hK8g0RyXpGIGwM/bkM=;
	h=To:Subject:From:Date:From;
	b=Y/xHbbbc05QO2AnKlZpf568EpP1+qQfsAG36HpcHsV27I9v2EPB3heQK8iR/Q91Nv
	 kAMeUPd0b4xFMcxpZaT8CY6RyPQemlZPc+O/oUc2CAfKC3kDpXdefgGnMjdskPR79Q
	 Oo7/4TyDqLcquJl34+AIBx2mULpsUMiEgh+jq+tTa60KVG/JzAcG9shZKCxmDYRHUf
	 cH8F5l7OSVfwEAof6LijZt8uJ+FGdYTElH30aGTyzXEhqaqCYF/G9I6RuiPMIJf7ri
	 bsI4krjSZYVY5vWDtxrrMJiBDVL3EnmGF07gckdq/RbSBY8jktc32T3g6NYT0kQp2z
	 QJGT3o+w+cOPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BACECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358105341.12952.6974986406088735014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0192ed6d224c93b82eca6ebfe7595a0cc44fa677f3284c84a00d4b685a87a71
Date: Mon, 19 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663581053
