Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81DD36E
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70049C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664951453;
	bh=PbYk2kRG2/SCZlm0bsefZ2apyYs6Em0WysEbTsi/1GE=;
	h=To:Subject:From:Date:From;
	b=Xk+kUQZzhDgMY3H5bFYoCLMBCvoCC8GBO3hqa+pVEny4beGEKdGB1B18Q1pBacMvM
	 LHIH2P3oXGSQHzjVFqPRa87q8K7EYZ63HZRPbmUH7oRYJnR1W7AxBsbmOtNykvwthA
	 93ZZ5iRQ6hiNbKUZnVgvDxQ1GfCDTQey/i5lfF4Vzt61UwgEpzutXzCuIQLhn6sEr1
	 WxBHT2OPi2P/Cn6UqME6q+qg36yAqPe701I5iZvZdJ0UTXoS53azugj78WkZ8dI7+0
	 UB6ruYD39N/IcBOe6iTBQ4RT19w9LyAd/1/bMnCsG2FDL0ytqTq1GHBbUtayEH/v76
	 rRSwIKSomBgdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CE1C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495145332.8366.14634204192848213088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ad26e37f39fab1fe1616eb72c0c42ff63ec63507f8704ff4a6ab69b48139ce
Date: Wed, 05 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664951453
