Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5563730F81
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 18:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D24C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 18:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694199248;
	bh=atjtVsLad1DGenJT0HWD/N4q9HM0A5P3MSchHVcpjtQ=;
	h=To:Subject:From:Date:From;
	b=QfeLUtuSAjFCF7wMI5Hq9FfzNtFGpCtdy1zJMi8ColcVmCjGUYZzQJpFwy5XYqYTI
	 iXRDwczAzbileJGd5+VdQFoFkvIm7zH8fI832EyLE8xKtypsX1tjtMRTq/swJXLp/V
	 xCRClnwwJQ2Zpu4Ar7V0OT0wxP3PTa541/HjAV3xuC50fSfN74HQifVZRo6GDKolTo
	 TL/Q0UfBMhRWzofdPL39AQdEfLqtNt4Z8Qn5QdoNJ088wZsv8D19NBztlhegJoQjKb
	 C+5Gmgct+BTNEFUOFee8gra2UPGhna8cE8MFDtwFjed/fnIYkhwuNYzXAamZhs9R1D
	 53n3/n5jTmgvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A51EEB562
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 18:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169419924867.16133.8604872084545132491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff3f79aa0d22ab3dc1d443023d0b23dd979a1b014fdbabac0e7ed880943c8b4
Date: Fri, 08 Sep 2023 18:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694199248
