Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750A17E
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 03:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fjw7QdzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E94B8C433CA
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 03:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696476368;
	bh=LaQOmntLfYjKSdzdE6/WOqmeQ/+881qYZEWwm2/ktPU=;
	h=To:Subject:From:Date:From;
	b=Fjw7QdzU6Qz555wZVYNlJeIMHXN3eeQ4V6QrYKAAUm9hM5cWjBJ+Vqriurs3LPciw
	 vSemKcm8M+AxPE7pAd7cruO2nTBxAPVKf9ysumkeINrHZhrfCOkSolLRkQJocaz0o0
	 DXPkqoi3CTqwkRouWNXvKMmxi3AikaVJqyb4gNBP1d+QIE4FGHmaXh5FmRBh6eZSWu
	 sxsKM2LEDhhHOz3+h54v8GWWRxranviVzpbEa+XaxG8zf/i2xwmrLpe9ha4eQT8BI3
	 R16MHVhW2kv4pZaPzAiLrd0SsPV9JY7QHD5N633I2C5lrkOU+FXocizTVCHphkMKGs
	 BuV3yw2YpruUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C99AAE936ED
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 03:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169647636878.12758.488864679996559848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c007f95c87e4970769679766d120514e5969e80e6bfdae010240120f30670fe5
Date: Thu, 05 Oct 2023 03:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696476368
