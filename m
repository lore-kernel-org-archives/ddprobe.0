Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544756FB7
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 19:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F23A8C433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 19:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677181506;
	bh=IJdVv4EZFuqZHKDJNUvTXqx2PajMAGBgDgoUvGQpikg=;
	h=To:Subject:From:Date:From;
	b=mbM+ojPEp2xMeVh81IjdUqs2m4eHf+sLwrZ+hIGndVCWORIYin2a8NRVZXxoQcsFY
	 9jA0aHpAXHWCVji7FCZv03NVLfIhWQCT/KZelbryV7SRKZ8t6f900LGNBHt5rVTQTu
	 Tg9Z2XjkNZxCc4ZaIfc6U0tC8GtWBpV8CkUAh3TO+HNNjMv5Us0SXkz6y7NVqI0vD4
	 fYj8HjArSEmEzLbXsMulh9ell2D9cgZoL99qSDEpYfAXyId+o7BqZDoM8A9cVbz47X
	 oHZoEoUx7xpH+quQn+sjUfJPJmxB24XP39SknZcZuMlUNZgLH1iAVLwr5c0rNH8k3m
	 kGLiy9k1a4VDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FA8C64ED8
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 19:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167718150578.8724.7984323624694273240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443281ae3eac571e1a3d092d078b7334b4b929ee22817f7701c08cc8b3a82c3d
Date: Thu, 23 Feb 2023 19:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677181505
