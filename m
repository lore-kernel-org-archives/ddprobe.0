Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C21CEBC
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 02:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9823C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 02:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680835085;
	bh=lgfoD58rsiZO0woy3pIsSZ9Dlco0lg+6CKsnoJJ8UpE=;
	h=To:Subject:From:Date:From;
	b=qK1gODltblJtCBTlFTntNcn/MTW5KyadH09uMfUBmHzTom80YBV3VZz39qH4rDH4D
	 GCmvWB/Eh9gBS75rPjQkZnnTMEEmTz/etVX812dZdARBGo3gqoPXk3gJT8ac39F621
	 MCxxPbs9dopU3tTQ4NX9ieeprHx2bb6P9/BKYZHY22t/GlXjwRQXdVfth0iObY+tcJ
	 9zY15hpC1wXVsaFcETFxLC7DkQ4qPwUq2w7+iRltRgpEatdgizEbMDIEuSJ8lkY5uB
	 Qc1RhJ+CDlrrjTq5RcWByi6UZ2bStaR+GMl2Fuj5372Eb4WvdVF/F60uDM8+xlOnIm
	 fiw2ef4mvHFuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78A1C761A6
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 02:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168083508574.16510.14229523244842897672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2616b74df48808a594f8c46ccf6ce439ad0af6b631509265378d038574e3758
Date: Fri, 07 Apr 2023 02:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680835085
