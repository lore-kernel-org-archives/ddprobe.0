Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1BA134B0
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsuYDKmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7940FC433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702118896;
	bh=21TYHRhvBq99n6PlUKismnqHpFGIti+Lw6tuJ0fpfsg=;
	h=To:Subject:From:Date:From;
	b=DsuYDKmRzqaQa5J+9h6oMIuO7CFBGu/QgsaVkvlt3wdUlWJQLidVOGC/IhuT/J+ZC
	 znTbecGrNWS0zPY10p193874KPSMQDVqmzlm1N1QJZWzgEwtzWbN6FOn0seuVHjmK7
	 EyG9EDFiPEDfu4Q4u12g1DSVeah2mg84YvfgsVxKcMOCwncozNPk74kiOSTjtW4Idd
	 opAU3Se25bkxSm4lyKE5biYKU9KOkTHKoe/ISRojKC8gt9hxUZ+uok+GalJHGCCU8j
	 tF8dDHIUXSm8/OFPGGTo9Hp2ofEdo+kpzH+byXDf847lyawsBhW/t0PVUKivMlX7Kc
	 +0dyk2/n+yuTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F23CC4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170211889638.2313.13849809671682994531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81814d79cfd06757aaf01a085a5c287547eaa4836ed2351ed80a583639c840d3
Date: Sat, 09 Dec 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702118896
