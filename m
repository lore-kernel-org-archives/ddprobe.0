Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DD0ED5
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A66C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664368853;
	bh=yP6F4ZNGNwJ3oyTjWAkKJQIkTAqvOFoJpDGZMeEM4fc=;
	h=To:Subject:From:Date:From;
	b=CGMRitoeRO6oY5YCcC0bM8wAt4nEvqj7gxdAkRKKyIOTV6ZOdcsflmmDIEycaaGIU
	 OCaUKYzWpy/STkEw8FBjURteFhommemrXLo46GtyMC9P7TxJn5lBDEVEpYn/u0tggc
	 xac2UVWsEw5+VPnQEfoNti8qi40u0DUmBkALCdbZxUeB9qvJWaEExFUEJEPYEOWAy/
	 6iSPGsMn8CIgwt4UJaTx+nGEy8ywl4e3wO7NPhxYI3lympAYCgrCnDEQxg+83isoke
	 nkxWehowxJyEQZwnnXK8VREPnvai9atJWEpqVadQaJwa5GhyqufxmnKiwxoo2rcdUL
	 N9WGkWJ/X9Lvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509B8C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166436885332.3444.15927139050187594169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e99bc94599d5a77bb4a5ae711f0c946bab48c8b01de6d2a3679398f5acb18c
Date: Wed, 28 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664368853
