Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB11015A0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7330FC43470
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661577052;
	bh=oVgvUkm6u+d2+hkVyC9eY5Cb4zp1AdJKt+Pmp32U4yk=;
	h=To:Subject:From:Date:From;
	b=aBgVOf4tHX7sPML8Ulo/zsIGFTtaMegytFBCVsy1byf7Q9sucNjguI+5FE1tP+ekW
	 83JCNq78F33LX8Si9qOkEw74XNvGhhEvJJ5e+lvu6pTSWZ1MChJZVwFUSSVn381G07
	 DK093Sw1Ym7ceaYjROkJK/+JK3m1Ff7+aCEqhQeKomh4auFgCweMbPc2ypQqmN220s
	 K8A5tE079Dnge4T/mkwhw6+1ud08ZVLYALNAcXiuMLSEIcXEIX4iEkKxahh8VoQ67B
	 LED7XoHTWMVBmaAxken1JjVo6tnYXnOA/YpegzWZMvpuMcS3saPVOuAhsOnVkCWi4h
	 eJ5z1CZnSIbzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A0CCECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157705235.6133.7707535657723450190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab2a6887451fecd412db5785d42e608fd1ec4380f9bcdc955d77b67b3e7d52c
Date: Sat, 27 Aug 2022 05:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661577052
