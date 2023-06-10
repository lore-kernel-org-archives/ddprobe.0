Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3F62564
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 20:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D1EBC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 20:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686429726;
	bh=HTcEFkSOltxkYuuVfNfJ/TWCXwClHiSbOs5HfT1hADU=;
	h=To:Subject:From:Date:From;
	b=txs5MdsxKSOZ2ooT6HUsC+dE1LsAW+jgew9sSqmOM9NMYDTFa0P907F+odsZQUjnO
	 zOWKGYBGYFUE9DGrF3nOfHt1vY69rQcgJrWJEDD6zAyTLQ/PNtrtRJtAoyHnBZ4k2O
	 a1xDUMT8fdU6sIsbv5hX/tv57iYV0zc/pJmDFtpw4YWBWIFZRzPUzDJHuUWsIaajh6
	 4GH4r2T4dqA1DkCNO2HeTDr4HzUIyHxBTlSkUPTVH+zSP2EzY6W4ucXsdh+VI6f3TH
	 qHX0egyUY1GbStLnL5P+Vj76+U5XTKBbdDENbMkjXL/f4SFnfrDt63U3KWZTea4JQC
	 SbPLz701vj81g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D56B5C7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 20:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168642972585.6015.13184904657526750207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8c28cd226a50921f53c54ec4d2d9036d7c14ef83effb2b7e1997a761ed1eef
Date: Sat, 10 Jun 2023 20:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686429725
