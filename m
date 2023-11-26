Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E643EC2
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0JPssiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F2C3C433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700997496;
	bh=yb4sLuouQxXN0RA2+6h0sCzPjBrRZI/6dYTlFZ3KjDs=;
	h=To:Subject:From:Date:From;
	b=P0JPssiYdFTvBl1cn1IMK1LoAZylkyAnXCpARhlO75FvmEcrsJcerGr9gizrr3nZb
	 Qc5y/C5jx82frSByi4VIytSgQJwTyPV9VOlzXXTqjiMaKjTVtcakXeSQ3cAGF5LmSy
	 GAD2kVfTaG7PNZ9ZuGzAnPpvDC8NMAxDzAvzPPKuNtuzSrYn4fs6995HmgAt6Mg0BB
	 heb5QCzD2Us/9lHZRxwy90aVGxMLm4BGui2dT/M625FlByYxB79we4SbtPym2XLjtD
	 TdVYZ60Qma98R1nxSmyrGj/pbOpy+Un9Pv683DCCL/omCiIrgflU7ALy0dMQYkF/Bb
	 pDHh07xcpxlYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74F3BC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170099749644.28088.3488042255552130851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d79090f52051615059ae66bc794a7a7e6a603d8b557ca6842e44aaec8b4f50f1
Date: Sun, 26 Nov 2023 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700997496
