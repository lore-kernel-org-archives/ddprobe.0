Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6182C1841
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 06:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14109C433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 06:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680934266;
	bh=GctHryWqgsMBHdbtB1pPpimrT7hU1ZvnhWEfyeuZj0k=;
	h=To:Subject:From:Date:From;
	b=l74dnzvKrSo4MGH/KzGip78p6ae6TFgw6JHK2aJ+EQvIkkwaFjTOpKTLYQNYPkP5m
	 NL/04FihxAyL5LboXX6Nw3/HhtABEP+ob3DI9Y0fhzjr2Em4U//YssagyFZMy7Nsgi
	 d6tMA4m66OPvKD7NcBupK3Zii1CzISxK48czzJlEo7YvMYEbpcjlzl/DoLEydOXs7a
	 l8RUd0kPGHTdW3MZLX9MsM6BLeUbptvOThpQdJwm2yHUA0BnTxeVD7LpTleSJvUcFJ
	 dbw4gWZ1a3wuPOqS1a1zJ4Xl0vpDaIYa8QLrynevAue9P8WBzA4wcdIqDQFQaOJntn
	 4KQCMEWDkkvlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5718C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 06:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168093426588.3823.17215879932391758187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45aaff1ac23ed70ef3daaefa54ffefb45b30c9c5ec3dfe4651e6c74afdf3d67a
Date: Sat, 08 Apr 2023 06:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680934265
