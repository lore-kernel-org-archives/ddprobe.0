Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDCFEB08
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81AF7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669443654;
	bh=z2iFWvfpAet2LVKtpAokPHZFMQiFOJbSmDCl5d8G2uI=;
	h=To:Subject:From:Date:From;
	b=m7oPZ8gFQ1YfsXnWz/keox9cAER/A40WU9R5OoFAjxciMHdZ2ioS7NgC+Cg5G5WXL
	 u5oqY93UC1vrKz0eha8NfkuPHGjjc/uw3tuqG77DVyf5B+y1NcSKw9RO/as+z6Y0IZ
	 cycITlwqs7fc7yZELJABe1JvDHG+6SifTheMRLAuwxx66irtTZF5v2XVZNoNEKwX94
	 ONQ/Rfw2Kbn7Ie++RmX35cDbJdHzfKGZaHv2zXsbLiAZwEtQCHPQLtmcpG2/XD1Q7r
	 78U+Yr3650uqO5X7MCpMiLTRZl/W0p/R/DCQCH9jAh6B/YMugs2EwLq2Euwu+aFfbj
	 auKOGvLCyPxfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A5E6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944365437.24236.14497107149094020705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc21fff6e7dbe3fd6acf58a389e03eecd745e44fb4ec6744cd5106568200045
Date: Sat, 26 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669443654
