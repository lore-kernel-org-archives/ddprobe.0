Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B23354E8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 22:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdo3Avoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC569C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 22:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696978628;
	bh=UmF/C7+mdjWBNcJBjazG5rzbDEGVDD+vchTaYR1BzqE=;
	h=To:Subject:From:Date:From;
	b=rdo3AvocOYIJKcFuEDl2N07/GuEBBV8z04AFz1Jf+tamqKOBUXNMUIR3OwAl4yLqY
	 HqUNNa8vTf5Tau2yupAyk71c5s/dVFTowWsi8KE6jMFElOql85tHqTPtlsb2EqBYEz
	 WwrKOMLx1wFXDGGk5S15bm0X3KnDwsj8j/oE969Tj8tBjDoRDgsN94R3Zxfvy3fJH9
	 KZ+xtaHKtHf0lFiiQ4BiwguRN6AgH+0MEWcuWe54cqnIw9cna75jlCzykEvmkIskKg
	 R5lgKMsn64LK9Ko2f1xaUnEoHFzkoo0NvN8eOwr4kXxnW1i3o0nxP9p/WV+eZsz2Hu
	 N0Gfr/JDN2JlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB39BCD98CB
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 22:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169697862868.4558.2403945161818723019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 309dc206d61cc55276d024976673c305743f5f91af30dda4fa27b98bc849d4ce
Date: Tue, 10 Oct 2023 22:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696978628
