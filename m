Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE92710E8
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E1FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666816253;
	bh=4v9Yr2/5dOFH+SYXccCHbDPX+ncvPBdJXi6ViEJNjZU=;
	h=To:Subject:From:Date:From;
	b=M2hhQRjcbr3rNXWMr9RyOlRCbSgat26i8Bg4GL3VDblbbmn1p8/fpq+DrMmfabrHg
	 w6G7U+84xK9ORbNqMeZei8djOqo0mYiTxHfe8Pc9E+S9CzQLF+87y26+krgpHsHIeB
	 +7kq8uCayNMcRU5+8VCk9anBdpU63/i6zBFiUggY/LvnUPGlpP15QnQldAwamx7Rhq
	 LzzgY4gBtut57/+eGicGyF/GtviO1FjTewlngdbhEXtLx3DI26EVvuRPV4K9lSJ0Ha
	 ZDWCnpd1TYZCo6Bb4veNjsTMCl6hsc1p25hQ4q16vbI0bTSJJvOMuUXhUGxDQNm3nA
	 Td2phA/Q+cd9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54927C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166681625333.7348.10057840668123242291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04912879304d76c3dbe9811fcaf0e003addb6b3f6e8a005cde1428112c310cdf
Date: Wed, 26 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666816253
