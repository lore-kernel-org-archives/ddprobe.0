Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91D4A49D
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A0D1C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671826887;
	bh=P4681QRPO8PK+XE+jMmBVwiWRp5ltDymxvOXYQpiSSc=;
	h=To:Subject:From:Date:From;
	b=jHdHeppzCE4tOGN9pZ/hZGPchUwGt1FKft8PmpWDSS283LrHfj5WzKKeBRV/E7+Wq
	 dXua95EYNipziLo0a2fXHK4yEpZspeZIDK8ksddnS4BQGv0x5R63bwgeoHxn/5/MRV
	 S9TZbnQ94LJgPh/KULhZ67VWhyyqltSqWqw7zDwD1uolT0eakusmemRrP8yHhy3TbB
	 tJMk+3U77iRqHDH1o0+bl4cwRVVe6VeY0sAAH0db08KYRns51YHaNV3Hy8SV64PXkZ
	 ISnUQqoIZQP8ZiT/PQSEK/+1Cep2gM+TokG9n77OtuPtIONXxa79O0MvYCAhxAUWhP
	 YENTs1p/cpYfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70BFCC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167182688741.4373.6636605787957110486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f36ed47a065c0da9a175c4eb165f85e6ba7f8564072af385f30a9542616192
Date: Fri, 23 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671826887
