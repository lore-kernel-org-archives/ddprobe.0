Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E588915A9
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F9F8C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671674487;
	bh=b7JhvYldulk57EDVdLERNmCWx7FeTKFbL2bmBAeUlEw=;
	h=To:Subject:From:Date:From;
	b=kFi7UjhnrlaDfOC1BpJfqWvRdSKolowL8ArUHhPFIEExDkWh9MvP+ztFyflkJ4QOT
	 3xiXXz+5lb0XrWN0iL5D9socIdiqOpIpxeGHfuF8dg7jFEV0gyIB5mbL3Thw4b9U2n
	 qMufbSg9q2iHV9NNHMoKHuxawLps4j0UH5kmHrbPuHiDCaPHxOfMTVBP5h6/lqRuLY
	 Nn7FfrzhKHFyNZsG6tLLSQGJXOGrT0Q8a+lz0kbADibVgn+4ovGYdmjyAJxDI3R2ZF
	 rNc6xQur3l8GOcYCHGs3l/C6Ok6YTFU2OrxVJzrFOkE1D4bbcLNtnRaswm5YXNgM3F
	 PDoaXuxP0kG5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DE15C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167167448742.26782.13443699655706712239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542d0f9dee17167afa9783a03deac316749275eddabf4889290c66ecd65eda47
Date: Thu, 22 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671674487
