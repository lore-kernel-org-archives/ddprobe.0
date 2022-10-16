Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB36800
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A595C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665916853;
	bh=oay6klBdhwJ8MN+7MLMfBPRjlb6o9kiLGDbToo/MXW8=;
	h=To:Subject:From:Date:From;
	b=vGsCdk6g5HZVBTWr/p+51tntibOatrOIononXt//w1ZL2Uyop6vvZV3byYpzkhOkl
	 Vi2f/5dD5G2peDgmAWR/X3XIsC/YA03skxRBCbuicTVsCvnYx1Apbq1JIPmkq9U56q
	 YZhemqbCxr41RyZqMq1yz6hOe4ZMt+SuH7XR/yxoptxR2QzcxMYpqsMXmGHytI67Um
	 iixIzib5XVght/tzyqFzxSM5x0ng0SWPs5fy/ofISiuPBPojYDNC7p6CbScr+BYOZ8
	 4RGiR5dUgW3tmDjeL71XhF8s/x/rXv5g/D6+MMjbLSHS1WuwEwEaQxF6D6ZwpJ6oUB
	 U0ia4HlQREJuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53ED7C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166591685331.28974.3390514782127062382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10933ed81c787ebd5a99107d11ca2b9f7630107232ec3db72964d0760e5d718c
Date: Sun, 16 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665916853
