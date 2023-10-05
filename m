Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E52536B1E
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 16:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HF3hZllq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF930C433C7
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 16:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696524428;
	bh=bSuJhHl+CfgoesXsUCq53ExpaqWm6aOPwCQ5hjj/ZJ4=;
	h=To:Subject:From:Date:From;
	b=HF3hZllqQYsGzcyrxy66rxoWNaY67st6nAFxrdxHxdGeZGauarQcxt5Tl6HwXc9Dn
	 aIjwUNm0Vsxs0mh3sa4JqrREDfd7PTPKQTmQJ1xsjxmYK9TQ27Ecv7u1mzZiRHj80h
	 +77vNAOs3ykpkCEM3WAWHfbVcbsP9nGerQPxVSeFQfeMIaNuf4I9H07FZL8jF4cVuF
	 kbpugyfVbfQ6Af0mObFfdtvB/kwnySyEurZr+NMuk0R7PcAbzTAZx+/BRCwGFOaqwk
	 +zCSsJHX6SXHtCiLd2ZWUXeSgVzvQLXRO9wIr67vyvx7OFQX8zRy1JtrIJw3pxzYle
	 oobkYt15PcjSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E1FE75451
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 16:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169652442872.3620.8369275990162965468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4292220296697a664b1d6a066be2e0c9dcbb478429bb5c330b97ac9228b98969
Date: Thu, 05 Oct 2023 16:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696524428
