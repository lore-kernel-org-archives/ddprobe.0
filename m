Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A57D1AA83
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 18:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC905C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 18:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691605388;
	bh=YDaz0il1eBWeYDAS3L9fBF4KLeT8aCptLlWhBrwV3mA=;
	h=To:Subject:From:Date:From;
	b=XitYEOIZcalFF8pGKYmKIulK8P+OBPUK1b31gDVllNdeGmNbctw/RvB3e/JPil7z4
	 XBF8r7nBC434mh+Gr0Tcvop7ADW6yDZtxNONWUmo5MMcaUZS5cWOHkQEQ8smqaOYJj
	 VaeVQRAftPLOFIqHXxYDCmQfR4x7Dzppkqa/7On0jhGj0u4nNIDhFM5HzF7zyxUuwv
	 JWp/GByVPvzN4e6lHAED3U+PDPK/fIFyOc9EaZpiRbEdXr3AmUbVYIKBtPSKhhyqt1
	 liIHsOQFdV6zRvigGjtZ8qPX/SByBWnA1i2/b7I9w7WX7bWb9h5TouPgHGQ8+Zd3h9
	 /NlfiPqMhs9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E93C0015E
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 18:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169160538867.9220.1261618270312571220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a627fa2e16d2b2cd0d2e77161f2eabc152649cf92fe28e077a17fb1cdb9ed0
Date: Wed, 09 Aug 2023 18:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691605388
