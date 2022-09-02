Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A38EA0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF69C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662079253;
	bh=WoFgjJ3bAWf97eU35sdgByEqrTA6v6Zook+3qsv1WKQ=;
	h=To:Subject:From:Date:From;
	b=G3S+F4esv+I4N8GDYP0aRL/lTeZx9hIqEWpGzc/pLJuMaVGAyxbK1gHV7uRH4vFDX
	 cFhx9vRQ7e9jQn/N9t5fIzkOfzBRP+ZiboTU15lnIkImveZl5SRgw00BlNvc3IqgQD
	 oCedSDh2WhaTF2+HOgLz6D70xb7VwlhlskwWpnxkqHv7KELmy84GZ+w4AJqtaSHMyc
	 NLRxFMRzlpzFDpGJUmILbh2TBCgCsumZ9BA6OHkuI4Xy2fJcka8lnEcvPP4r7DSV8x
	 KO2vREXHnPsTirR+F2yv9pHQAVBMig89S8Ynq3fFw3yMQZJodFlUS2GmdYjJwv7iTc
	 HOtB/ENT2hIlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AB6ECAAD2
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166207925333.6294.10951920671231963618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b964b19abe899185058bf7e0752963a96feb902adac014a76f0fcc31a442a71b
Date: Fri, 02 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662079253
