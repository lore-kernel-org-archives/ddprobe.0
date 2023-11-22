Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245B66FCE
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iE451iaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81629C433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700678896;
	bh=07vTZK5auUDAdlOLEgHDZpB8tLdzRfd9hugUSIlxOz8=;
	h=To:Subject:From:Date:From;
	b=iE451iaMrRRUikjP77Kxv7+mOR9kMJdJ7e56nlPFE9n6RjCmfyEWS3uDuqyRjiqR4
	 cONMRkXIeWQ9rONsW1yQoShaO3DIOY3Qwxp7AgZerHt3rGxHQMohfZdiEzhocUik2G
	 ZahtoTZCgUB824HJBCHOF0Rs8p5zJtQYLKBdXffWL3Bjsam0yEDf9poAADU+EFn/0y
	 D+gJb3Tm4g3uWMOclUde/jAQTQ9dOjVNlSiyFP/Ct8w8C1yFp7ygCM+9Emycjp4Rb4
	 SsUb/FJgUcd0NqIA5kwqoSaGTY5/061TVRhkIfjr7begoPwbbzaA4hlYPnnGFfrYVO
	 2esE2z7TfGeyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624C1C61D9B
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170067889639.11447.16831041745309542378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0fdd01c5d9b00350790aa95f9ab4f246115efed3f2432c0932de09bf38bd51f
Date: Wed, 22 Nov 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700678896
