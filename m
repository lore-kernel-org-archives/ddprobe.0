Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6291B7F9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 11:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF47DC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 11:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687605788;
	bh=Ji0j1N9F8kTL4NgRANUKJeXS1qVRqgRJKkOOKKpHOeU=;
	h=To:Subject:From:Date:From;
	b=idlVpNQZcJjGfMQ61rZ2xvKIPf3pwo3vGF0l3oixM6YOTaxBYmdu4ND1+ivLiOGEe
	 6K4Lmcdsul0oImH8DvOoS0IJ3NlqZMTxTZxhwdiJ8zr7cSaMe/Oqku3egFabpLBofA
	 HsIgkQM3T56YwbWhIVba5Spg72VaqYgEIWPaXHxFjaUjUvSrBfcOmUJ44oSfTWS7nW
	 jX9JMRJaLm8NEosM45pDcJbrZ1hHdkI8qGZZ/gh/KZy2My2Gn/TpCOC2BY12TWhVSP
	 rnq0OTSTQfP3jlJ10j11n6ASgrJCaQYwTXExR1qBL1DJsXZUjCN55PX0xvR9/pIJCW
	 jDVgGli2JcMkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D91EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 11:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168760578870.26640.16919401977656888741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 399c3a080decb2474190512c4c2a670bc01580b70a27b015f0b7669092d5d6fb
Date: Sat, 24 Jun 2023 11:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687605788
