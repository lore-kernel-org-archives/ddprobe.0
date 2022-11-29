Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B112583
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B82C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669723254;
	bh=fXLag4KjsWFN7/tKbZvx9tf5Dyd8L/yQatCxioikkIY=;
	h=To:Subject:From:Date:From;
	b=VilxInxLizJGjUY123lZQbhOL84iy3wtWVwI6Q3GDss2w5JpHk0BWvSWfjNAczsyZ
	 GKaCY5wPZF+/9+oxtgmtqVfnDjYnBxuR59Hpa42tYh63Df9h1OKb682tBqra7ewy8Q
	 qOGaHOmjzKOaQs5LrwoQpv4uWkY13p80DgiCjCu4MQa+8+P9rMjOyQ+suDkQLC0Qme
	 Hi4pRUSZ8v2OWnmG5uK2j/nijkipZWxfVpB2nhi5ygh4w9jDmdo5PQMGXnjmnVO8Y+
	 Edcj6A8RGxUSbKG7Xf0cIRPUUPf64ekVWaEkGbi7gZkZhTCZ1zbIfdDyd3yTvehCUo
	 rQQHlYY9g2cIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525B0C4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166972325432.14690.9199830264341434909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2caff3e317302a2b718e9c5df14562ef7ba6231e554c7f9df52ac0a890409595
Date: Tue, 29 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669723254
