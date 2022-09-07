Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C7F7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97546C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662523853;
	bh=uIpydxaWpBEgXqZ0MEncKeaN2DEGct12KaSKvK1P6SQ=;
	h=To:Subject:From:Date:From;
	b=D9H+0shHEEC8LrkeFp2vWG/hH9CbOf0IMSudzZT7qla+UFMHM6q37Lwg1weFpWLtm
	 MbCoO1L0YqorJ6QdlMIOMH86+3h2s8/pMoj1x083tQUO3DQYwGzc3JJLoF3PrJa6z6
	 LDebm1TJ93cD8NAVJmdT8nPy2bNittQQk23Qy6xcUBzgjOh/uOkoGii1ivpeRzv9I/
	 Glsl8xV3qzUJboXcZ2Bo4FR0v4hHkmtlLUN4ipPYlV8iw2MUBsZQrweI0A69faR/ae
	 HZH+xmjkBzaKT2dVSF7/0BuVjFrHeBLLSs7UyBKwiim4YAlqFCaR+fHoGPIHgT6eKI
	 96U5aK+3BWa4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74A73ECAAD3
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166252385343.32633.4817428699501606723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2f6721b257e7abe86b24b0915f81c8a420b08e7a4a7131fc0b7056399a687c
Date: Wed, 07 Sep 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662523853
