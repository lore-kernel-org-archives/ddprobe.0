Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E6F136F
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 02:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3664CC433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 02:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682475366;
	bh=d1csmULlj5O6tu7/+Efj3i0p8VuDqPIouZ8H8z8HAIQ=;
	h=To:Subject:From:Date:From;
	b=hjKaf0RdqbSh0QfAPRpF69pyfv/1nj9fm9itfuN+Lx2P85AoC7eX8tdNhLBQAW6NE
	 HI3Xud8mF84gC4IaV9one27VJnnxxmDDtKED5hTVeiC6HhMbM0RTIzW1bnUC/Ramd0
	 De7yd5ftK9uoaKdAjYns7G+gtoHtO6L/AiLFIzfE3FKt9myIfLN/KrUT9IKqpvVMYf
	 fxJFP/tl9N0SCm9KOSW3lY/jLWm+VS6nNvMB8PPbTiohE4O0BlsBy2cr+fwDZvm5CN
	 vPf2tykClaBhPozN0gd+WEnQXzbOlUyeY+maKp3J/hf826ibTMsXFGIHOHcXvx8MZJ
	 3VihBBFIzAR1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04206C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 02:16:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168247536600.19677.14306454572972119132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f9cd022a87a2072d14d8dc9ae7f37d0912279a692b88a573a2a696aca235fe
Date: Wed, 26 Apr 2023 02:16:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682475366
