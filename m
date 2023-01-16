Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30486FB7
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF4AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673896887;
	bh=2YInhAFg18HNc31XW2RAa7gRp1gnWDGoarnUPMSPp/g=;
	h=To:Subject:From:Date:From;
	b=ACli96gxYDvi1uAPm+S+Rk4H5z80DVfmSe6amo9qeHBdEl9UQEXcJBVeIbh5zwBIn
	 MXezO6cftf2w5TqqRoVsUCwUTjFH6cHOXp+2iio1lxzX4AX5K/safUuYgfApOl3Xfv
	 k5cy8gxwHwNshSOD3XDINRCC+Octnj1iqTHvFztXo6SQPpYfUEVrd7Et34iiW8diDl
	 XVwZ6jXNfEHEAnFDlwWMB2yBkWBS4n4hC51OOcg6LIRca7ceEVWrcsBQKGcCUcnDjs
	 M5G/nezJsVlyTWkyJpN75FPirGZzJZm94kOODQwMybr9dOSxKrfOUKIAI3QBKv8vLF
	 oiBbDM9L5oX0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DB4C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167389688738.21032.17586708169429843871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373a4bdd8d0a2b0017578e3bcb3d8eb975702bbf92e2c12cb8a7775336c7fe11
Date: Mon, 16 Jan 2023 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673896887
