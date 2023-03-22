Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5E02592
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 12:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1835C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 12:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679488745;
	bh=eZ6y1VzOVZTjBkza9TW4RwU404O7ZXLn8qKvLwqvx1Q=;
	h=To:Subject:From:Date:From;
	b=Ly29Jy7tjc16lqpiXgn6/f7GKiJrvHkguNDXv+6Of71yeOBoDOSnl2err12RvzjvB
	 FqRasdzQfRXDd3IKLmm4Is4n2f7GSO015xYH33t+Hx5cir/Xts0IwI2JGo9CglXdCs
	 +MOZXeywfNUgJ5AETMta9FtksBqmixXgwvMMrg9BhMBt4UgnBG3Pwj1EsDEgCpVxHD
	 T2ZYntMzs58gHA28OFrOMd56P1EoMEQyiXSfHPOjMkxlSmtWoakMXVm2R6BUZ6QRnH
	 +X4mpwVWHEDZpv/mMdxQJTM+YMcHc7Tlk6oJ5rUOqLqh7oZOuUjN2X5qZwsRHDygYy
	 IiAFHLbzkgmQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CA0C6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 12:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167948874574.17949.777405852280971944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43aae3dd5252653e6e1d30c30c047fab5bd1fd0da73c7c4b9760989f3e026d2b
Date: Wed, 22 Mar 2023 12:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679488745
