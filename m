Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD93E36C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7559CC433D7
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663378853;
	bh=QkYL4iwqPwjarVvVOn6wizgP3ri5AhUygB3y8Is8Qx8=;
	h=To:Subject:From:Date:From;
	b=usX9Upelf3/V2DsVKlKEiaOr95oBC31cKcABPGsE4gIJ99U9KzHYnV85NcNAzQOdg
	 1GCfj+JMxyKs85JSiqKNpbcVudeSitqy1Jnn4OT3+MNx4GV2Z3j3nq5Gj7V/YaiDyC
	 pFZ/Ww7PTwLZ0T2QMJsrbHKxaGfyBTtOdsM20jaw7RFFlJmMY0OBl9Q3mrg/kFHFc6
	 poYCuxqrBtoQMYKOpLwdVb234G7umhYtnC5o0+ScqTGHA3MS5koELT7uyzO95e9Qbz
	 GnP0Z77SqAT3ZMwh7aTPyXrR5bi9JP97sUQ7RF+itOCtvXn431rERheaFEQ7TE09gl
	 Bra93hD1AaQpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A1D5ECAAD8
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166337885336.5384.17934978544052951312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e2c9a150e2e4f8214dc386be7ffb7cf1ae00495795f2044977fd3e79baa9c3
Date: Sat, 17 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663378853
