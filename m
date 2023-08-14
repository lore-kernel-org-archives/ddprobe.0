Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FA86D24
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 07:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF550C433C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 07:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691997788;
	bh=s3G/V+beP2GiiqDzTR3tG81Ye81ODEr0MBTcdSHmgVs=;
	h=To:Subject:From:Date:From;
	b=QzDDpJi3iyK/ZTpOVnwEGYd82Ov8PJQUkqcoflEifNUHPsGdIV+ceP7QxhDHfjzwj
	 FQwN+gJQy7ePU4zphu+VAc6qqw5XMXJcv/fh+eCPhYPwu3Di+pb7VpUEI2dgZhACBa
	 LMNitpOe0ANGgYolx93O5UdBu+3T1+aRF/uwp1eoJxVv/JH0uoBga0LILnJe38dZqk
	 Z4UwrCMKpP2NLtJqYo+xWw7LLNy5R5TxNFbxBfNJ33Pbo+0VeTgeP2LZmv2nceJc4t
	 gBtEghnoQH2/QR5wBQq7QkqS4s01TLx2KZ0Ftbxh7E66u3DxD/w/vX1Mo6jnXFulme
	 J9tOGhhiGNBMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88D6C001DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 07:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169199778868.20273.11091595795255097151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c4038f5cdd48b852269b2cc73cc6b1e1f6c4b7d1f6307f8d8984ab0240ce75d
Date: Mon, 14 Aug 2023 07:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691997788
