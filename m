Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85757C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70AFEC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662617453;
	bh=W+pW3H53iAbjMoVnNjLgt8oCs34s7ZGFONFdAcaIqvc=;
	h=To:Subject:From:Date:From;
	b=SdWx2uLO7oh0AVvfQRJ+R6Dpfs0MFrKUqYkwChTJQSuZPTDOhmroP9QtvQHtzPvOr
	 cNWkPUPKn+PGEyY0v8bc9w/tjZYv0yOI4ay+eMylQT1TBBBAWCSpvye8ss4Ejgmlag
	 UMpoRTrjbhgkNS+EO6qeMQBjt/MgfNA6u4gn+SQu6nVV3jN49wT33e3+l67XTWdIQb
	 mN1V92J0udlfovD4C9+2OtRu9XAI/+XyAXrq0HJ9TMNy2vkfiGURS4Q6uv2KTt8h7h
	 gD210cFuq6/DK/qpJxN9Hgr7iq9tThKhQ3c2C4BtdUE0VcHvx01Vf9aUuLHMAGT8Mn
	 0yWHsjxDQU5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CBBC38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166261745333.13841.12105460895710912378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ec9461a656c1643f9dd7b0641faac3ad8f67aca65750d0e52df9f036bc10b6
Date: Thu, 08 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662617453
