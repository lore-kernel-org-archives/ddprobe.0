Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E54C52F62
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWgnZWpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBD1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703519296;
	bh=yTiBedaUZEjCdW1NRsEVhzHuWdY/Tq7kDXsysCnAnjQ=;
	h=To:Subject:From:Date:From;
	b=dWgnZWpW1zYS4IYG7uT2JjPwOXauFgVM7u+ApuYMQOjB45dIIQxDBTbezaD9KsXfq
	 ETZk1QZ4ZYIDFfhbdzDNUNWX/blgTLE/80suibXnEg1HBpFXbIsk1ydlM+BcncVidd
	 iKoVShFXsjQQAbQi0HcEeEoiB+2V0Q30n9aebE3DdXQ7442/jM9QhDvgawUvDNTX/q
	 tLilHoAle8nkPCw/4bV/Z1iYoPMMH9kwKsbwmJ2ejR8DAbeiI44QhSm2aqN9q7EAuK
	 tAzw9HhVRMG4GdDesq3eXndemNhgQ/gaEaDAyVvZASkZrq/AZH2o0JXBMmfq97rIv7
	 LQo5jAe1pGM8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 752ADC3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170351929644.6663.17086765172983527712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6827d4157e591a0013a0f16f6d1d0089949d7e17466fcfecab2739d6867462a
Date: Mon, 25 Dec 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703519296
