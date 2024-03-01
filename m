Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9639D67E80
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709275696; cv=none; b=LHVSxAODQ2syv/B1yl6SZB8GQgFmCISTRKgM1ooWQQQ6n3dgi8N5rZE1sin9qA6sGAMuVDf81B+AGvSROB7p149bnzWFVO/PiMGrtCpkevLoOdJJsiX+oH7RXYJAkr8OcJwIyyIkmTWgE/bhfCnIELmgubJO8YS6IyBns5Le/LI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709275696; c=relaxed/simple;
	bh=pUX1Xs/8q/ZkLkbDmM0aWnVFw1MTmdRl5yaNDf2m0MQ=;
	h=To:Subject:From:Message-Id:Date; b=dx5Np77IREfvWsSXGg9t0zKn3ZuBcNsJLlnoLLdusToOczxomgRWUKUaUBlae3+bWp70zfjWfxh6welFdUnxnmNkr60W5qg7FqacLUDCEhCv0EG9i3tsd1N+QvkjeEdLIo+uLwLFFL+ZnqGMwVuS/RsoPvrEjSiSgLH/Q1rJRtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZ27oB9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZ27oB9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 746B6C433F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709275696;
	bh=pUX1Xs/8q/ZkLkbDmM0aWnVFw1MTmdRl5yaNDf2m0MQ=;
	h=To:Subject:From:Date:From;
	b=bZ27oB9hGxRrMaZNms3u3TwcgL8DJOJBiXGpYZlnV0nKOwlm4E8j3TLPZHr0gLjED
	 crLK76vwMo39TZOb4xVNLRLptNYCBHdWPIeggge2nlENUBZgFmnmbtBxo1PhggTrnV
	 uCuju7NmeHm/eXK0laIy6bpDoSUTsKOqMbEEhkZh7t6OXG2Xd6dVtr2/cXxvBzvE1K
	 vqs3FeTcEQBzJ42dY8sU23r27mekwaVuJ2hXihzDEri3/OgtQVdFXpXcrbp+0uj1Il
	 8LNDeDQ7w+rzm2LmQtnJSeYWNFcBwBplzveCG7Xm7XXcArq4slMVHS+yDEWSuUWtWb
	 B7Mt9Y4dH8SfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BDB0C5475B
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170927569636.6166.2189858691083189849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbba1d0ee9bc863100b2777cf756f28f2a508dfff095849fe5438cb3288adf51
Date: Fri, 01 Mar 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709275696
