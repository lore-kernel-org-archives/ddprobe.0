Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3873F441A
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8737C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687601588;
	bh=WcExhW0vpIPGwxfOP7LoVKFvADntG2uH+WGv3s/AV84=;
	h=To:Subject:From:Date:From;
	b=OYTzFPKr+jLCa2o0LPzP7yrMGP7OCZ/TzqIEcHQG9cKCmOq4tZTVhIDXy/OAftNmk
	 8IB2WbCxmoRaM7TzgmeLPZ37Cf9jvZtgDPYGG4odMj5wtvnz7Tvb0mz12Z/efNqopF
	 0Re1ZivkSwskJT/hbqGsrlOjjD/Kph9N891MDWG4zOg5Evt0LOnjcphwpvKFgY8ofH
	 vDQEYZv61dEpUWxrn6Mp393ihtGCiI+RYe/ggmHqRjuwFkk0Orx38END5j89i6U7IX
	 u2eMMLD8ety90qfE+MfFQJnPRbs4Q/EW5fkAjTTbm/5KmBMCyInBug/iWXs5xWnrdi
	 uAT2s+2foDtQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C88EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 10:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168760158868.3224.3115346769075537200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d364725e3ec336a0422c9e6ecbc57bc7c904aa37ab63fbbf8387fe123642d4
Date: Sat, 24 Jun 2023 10:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687601588
