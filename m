Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BA72108
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C408C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667395254;
	bh=qaVbS5x1pQ975XEoFUbUTjxw+g4B5fK7B62SjnY/rYY=;
	h=To:Subject:From:Date:From;
	b=LGandRtIkHbI2Agb0OsyyntZFdQHBranfgc+4/Lu4xjUUDhn2xwmDmBjhsz3JO0Zg
	 Jf9R0A9D+rYjt7az5M7cfogWFsOlHaB421bsG4fIt6CVqh4qIkV1RdnaqxvzseJNDe
	 oZqBwW0VoMh6Up8UZF3fHolFTgcetYRKxHxO79to8aE7CSsCiELfHXJPTJ5AxdKyAZ
	 ln3xXZRdRGbG+C5tv7ua/qFjbqN5k4lPYYAMKZTJhTJcPuP3oHT/1C+x0oR+FkGNO1
	 gFBsnG7qIEGFsXuAMS/Q4yJVe6pN2NBeRLR3R8IdDf/5NhI/Fm3WiYJVasXBNSAv5y
	 iGPX5so2CZYKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51388C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166739525432.1285.6615875262520171754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4f9c49c3f9b29fd73b1738cff82bb83b8e1d53a0e4199e7aa96dbf021fe3bd
Date: Wed, 02 Nov 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667395254
