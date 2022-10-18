Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B6B1857
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5C9C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666089053;
	bh=TyqilUpv3iLbe80zvMz1cdtg9yrDKFjpCn3wScIsrcI=;
	h=To:Subject:From:Date:From;
	b=kNRD2s0fBJwg1dKa2MgrVkbzcnVkiezWr7u85ezAo8p6ARfEbnaIam6tH+qs/NZ2D
	 p1xyFG2Iy2HOk5L83NWTDVaUAbgfmUusPS5Rg4ZKwJ43aAnnpmZMdcnTi1+CsrMQHM
	 Escl+D8wiVPiobgwDpSGpBMAOsuOtL4LBpHqcGI4VcnUqVoGtQnGPp4SRt83J8nsA9
	 FPg5hw33VJbplpFKZn2rRMTWavwM3LbrVyunvqLLXQRfST4AC5QWAeGtT0QRb5ta5V
	 DY3p2gRhnfUfWisYCqi9wOWfymIlqIzTLuwFRV/CiJAl4d/xsdcvTXLqMaeRe7njXl
	 PuXnvTwrlbVgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525AEC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166608905332.12643.8610215997671884131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0f6b7e12e7ae377b982e69c09e2748b92b27c8eabd6c712fbf751be2523a6f
Date: Tue, 18 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666089053
