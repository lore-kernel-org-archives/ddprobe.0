Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5444E5CB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 16:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BD5DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 16:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682697906;
	bh=ViZQLPxiEA00Mlz12hqwu5IURXMFYHyXifaoUOezRhI=;
	h=To:Subject:From:Date:From;
	b=prt3cbffOSSwoUrNiDPqP58fYBeW6CSyw8D9XtdmNN9rSpDnOcMEQ8o/jjvc1tx4G
	 2AIR4ZSlsIXSNGJkKfGXkRR3tNBowzKp9owR0MBstrOn9xEFur+jREnpY3t1yNuBci
	 CMDRRVonxR0blYSjlT4SADcog5DugInrajKDgQvsOnkH1lPwkfHZNl8H1AwqUO8id9
	 6uJWFY7JaTNo5QU2VpBruejqj09EI4I6FKqYsgtinXiF2ceZdX2CBJAdu2wKrTOzVG
	 qacQG/GjrP5FXr/zVK+wXrsuyJ0JB/HPaujhyZPrb9ubUhVZHZ+haOsdqOKGSPmMzy
	 Xb/xNYl5Bfl8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC957C77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 16:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168269790588.18476.17899901426210530318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71135d0f266dab26bae7d5f2d01c5d39ddc44c340d42908d5b6444d82bc27ec5
Date: Fri, 28 Apr 2023 16:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682697905
