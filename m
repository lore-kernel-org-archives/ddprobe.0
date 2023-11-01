Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134F16FA7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeU5mkZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E8EEC433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698826696;
	bh=FElVX07TBOFarEnIhWxIwmGf/qkfYoiZ2MweOdOitO4=;
	h=To:Subject:From:Date:From;
	b=VeU5mkZkfcHqZy7gkbKtY8/W75G/ft6o7q/GQvWvmVDcxh4YWZah78NkUxOM76Ghx
	 yq042ULVlG9nGFItSv7j2n4JZJUSU1g7CyR3QpPISEtax5EdgQoupUcEqnPESCiL89
	 rspWvmW3vx8t8FnGTti2MYHo9EbXZ3jwvVsnJ6IVKHql4vYQf7LgDdPLcC3kDVOXfu
	 Q2XGrWp0ztF5sFOKoNgkky34B42zCQHXbI41OmmTuFPrQJoVVneyUJ+Z2VK3pMl9aA
	 8bN7DHXOmce25BASvOKfbIJBusqI314XdWckPLQYcAHFX/KmKZuYm06oJ5jcXotZbL
	 qVWIN9q4YAh8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70CBDC4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169882669644.23129.5028179980463361537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86478afaf925be691220c84ebdef11d4da9787124b32b39b51028c8ec02b8dfa
Date: Wed, 01 Nov 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698826696
