Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0757F7E4
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39BFC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671330087;
	bh=Fd6EBJX7R2hCnqobd0Q8vhefkrL9YdLkomRkA8u/iHs=;
	h=To:Subject:From:Date:From;
	b=BkAUl1Yb5UsR15teAPrNGFetu6U/+sq4mwkVWtn5Z1jureneozbmbzb9PuX+hheZy
	 1AmgNnt93l5J58O4gCYQFdxe34k39g1YAYNCkRXtttSD6dmHQsI1mTDPiBn/V2JFOM
	 H3M4epv6zZjpzshs3rg5fxMDZB3wnn4kZLUsNUOoJzcAfS5TWSduXDdnocGEykBfPI
	 lvFZ03e4WjVt1QWV0XpF66HwU71GQEq+sT1fqgMnYHiuOCMzl6ATNr2ZsBh+vlOFqt
	 W7Y4OIDAMni0UYVX4PgH+X9kElo4tFVURQO+xlazF9PAGIOj8Wk5gmRDYmamFlZLrm
	 RWy3+CY9o8/AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79037C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167133008742.1492.3590511318993566749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad220ff3cf519f733a7bfa538b3740d300e156e614d73c30343f3496471639d
Date: Sun, 18 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671330087
