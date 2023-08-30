Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D8B1847
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 07:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C70C433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 07:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693380248;
	bh=WrK5+1J2wnBZ5zkdp0kW0R9CKYAfilMC89FfG7H3Jzc=;
	h=To:Subject:From:Date:From;
	b=Jwtnwe4VQ9kEb5CIyhvsxn7moTlSTMHeMBvZvjninr3WzTCYbJ19X1w6Tqc1jwWid
	 6nJ/EfvH96QopxYCzraVplnhlEK2t4PZpCbZGOpJEo2CC9Eg8Q1Oin3dP9lHgfJhfx
	 OFL0/voAfh1my6XJapvYTcHfKcVgD44r5bgIlGmCyuvuUo3Spl76ldpiM7apQBxeb0
	 l1KY7uLUO8CDvJSjK8UXwvI21ArQmDk3JhxsR3kcRVV6AP7vOM0dRSzs/PUKHtcfcM
	 SCNy17GFtiH6sgu3LPDdM0gDhpCwbq13/0RjR5DMJ7QMmdyIhmVD+9aAzHuvdTxJ8f
	 HoEdJo7v8TnWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A21C6FA8F
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 07:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169338024871.19904.7428358702030658990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a070069bc0c8c9e64e6d5e0169b1a1a623df472e8b7eb77226c04f155e96672
Date: Wed, 30 Aug 2023 07:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693380248
