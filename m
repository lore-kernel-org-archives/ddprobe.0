Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58018AD5C
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 20:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2974C433D2
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 20:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684096146;
	bh=3kN1FkRyg0bfExFGKeSAM6EwYfm440zw+Ci4g+xQ4u0=;
	h=To:Subject:From:Date:From;
	b=X5CyeuWVy09MC/aGxb/ZV8EMw/82yMNbbclKiBn229V72AMILVI6GgSzFxx64Em2d
	 zuXERCxRk5/x+MbHjw5vTg4LDEC2z1sfNtd8dGugtYCsHVi46wOC5LE1b0ODVXIpJ+
	 H/nwnG7zeIwFKZffeWJ2GLHL2ZMx3ygYDXwH1KI0D/V2bD3HCNwe4B3Tb1oOdwwv2d
	 R9CvaDOcQibq2Bg8DNp09R8sUAe/3zydaI5qoNl3Ecs0fNNy7pHz6/tvc+4xiW0uFY
	 wBWFXRPPstbemOODfcO7prwKjI+KQ9x8DwpGV5TJEZfc4imoMHHD47XI2/PCpEFKL8
	 bCUVXECVuylKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF8DAC77B7D
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 20:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168409614581.25158.4889255747379553765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8448888f0947bba9f8a8ff19094e0c422c9926a01df5e894e1304adab15dc65
Date: Sun, 14 May 2023 20:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684096145
