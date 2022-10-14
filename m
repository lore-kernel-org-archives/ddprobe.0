Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C091636E
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C05C433B5
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665716453;
	bh=CzVxZpA1L2dA4Xf+EB4lvt28z+3SfY5DPgC1KDIB1Vk=;
	h=To:Subject:From:Date:From;
	b=cKEN7AZS7damg/INEY/h6rw4m60nqGHKAG4Zd23I5dw8UNwzWz61H7GEijrEQzwTM
	 a6nEoFaZx8nC6jVz6QtV4poZkbRszTkdYnvZLwTxEW7UNTl5a/BZh9CuURUzJwYgCJ
	 KhO0EzO7gno37WK1dgeIZ2InUTEEb1upt5BKGIphB3kJHRSRgRWegnPZe222j/Tccl
	 D8fuY5qlF1ZXvt9NhYTTCzstAJOAFQKcVgpQ8+WGR8a4X4PH6tdFxgLfx1d2Mti7v9
	 d5mFqc06ThKPdZc1F4aWsPG9Vuu+sWVLYwACYZMA33v39Su0f12BmgAyHYM7frB54L
	 HNuDbU0w0k3/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56BD4C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166571645334.20465.14078352679067229867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22a8b7b4a0bf230fc4c2692a2b3702e9c38a3240e451c0b00ea1c1aaeca55df
Date: Fri, 14 Oct 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665716453
