Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7505A5D
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74356C433D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663513253;
	bh=TXwk3g4bxgv/cLd8tt7/dBljsF2bE5cbqdhxeWe4zt0=;
	h=To:Subject:From:Date:From;
	b=fnJkTEc2b98iGfkruxM96ygcTDFDrIE1TQCUDUgaukvqOaumnDBhzVxDUTHLBNqH1
	 ahBS36Fs7kk8z+naKVU6v4E4xTgPIwwN/fvCzhyXVRkjpdydaTN2KeiVP2mCoZZelq
	 kQB1qHbuz3S8mV3K/e37hdk3RII2+s4owFTOJ2IHfsUJwI6HXOXbbMeiVe9PsAW0zA
	 cuL6mk9/kkEFdheLY0vXJYsbr+SfoKSMFNRAlAw77IZVXYYpnaj6hQXfFW8hg7WEOq
	 NHhy2pJgXkwHB6N4EIN8Bt+IUKMxyCsPIvQrrVGCraL2NH7TJ2L1gDn4sOSlFmVDx9
	 krfE7vtjTPudw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5623AC32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166351325334.25676.6623171771325465115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becd32e143c72e1950349f0c6681d0717cd4f5d2c1b5693e920d1423248675d9
Date: Sun, 18 Sep 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663513253
