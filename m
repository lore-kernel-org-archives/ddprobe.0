Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DED19449
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 09:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AE6C433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 09:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691139788;
	bh=5rcqe9hoGV41n/WHTDqNeZFkyunGEOWpqwsmiqP0U8U=;
	h=To:Subject:From:Date:From;
	b=pdXjxtIFIStdWDNV2sPLd9injaR2RvzVTX0qmZ1new4PDEUTu5y6ERA+04+LzVw7/
	 QLq+OUTZ5cJ7vJf8rp/oKJMItOcwihDnv3/LrTKhk80Bv/kaeRQUIL8ZhKB4dj15DH
	 eyzE21DEEp7s9gqcin2iD00UL4IxpkDaf3yx6pWlumidzYg/sLRbsmPiKVPjMCnwEx
	 0qq1dH2sTGOGZrO4Sn/iYePTJZCX1eqabcl45r/F43D0NSvqpDbdaOtLL83OHDdxMx
	 Me1lASTCMTaKoKFxxY38KfKujlyOwHm9PgOY9Eb+fbokP7Jv78HGTORFSwCrYB6W1Q
	 Y0h2KizxBl7eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BD9C001DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 09:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169113978872.17089.11623781086626552073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9c1dc130cc5b328c6e5be5f87fcfdcc5efcd7dd5aa9868e8f0a881b59c91af
Date: Fri, 04 Aug 2023 09:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691139788
