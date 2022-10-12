Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66D13C00
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 783C7C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665605453;
	bh=T18hdn208utKzaEDLBKTs9vRaKszIWC9iNO79UxA5C8=;
	h=To:Subject:From:Date:From;
	b=t19iBn6pgQp2Vp4Q38AAIErw8yCEZvudeibVrmwgopZVipEd0XTEixprg0ZnciCpa
	 VXSO/XYu5vWU4BeQXy3OZz8LrFDqUeAnztk81ygb9O8UcJ0XC5VnlD8NgI0KVl8AN9
	 xSGs7RFpt/h5p/QdA7Ja6BzwFCx/az6yym2gspfXqJ5uKB5iSp/PbfrTQ7VpI0F/Ma
	 C8wVwEh3/J446+sBm28KaKQL5ASu5FzDtvCqn468n8KgKQjeQ4t11AYLyJ6GiRI0Z7
	 kWZ9oKInUnHGvNaR/MX5JCPz/3g+mHC94dd2PhB8AeenjuPDQED5P07Zvn7ZgZ8ZvT
	 avae7sPY9NzDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590AAC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166560545334.31663.2661420324779316532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 160e2fab950bfe8e0f21b8ddfbdec3256bcef9b5fac4fdd68b5a04f9f1cbc665
Date: Wed, 12 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665605453
