Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8D6BA3A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 14:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCF0C433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 14:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686841148;
	bh=ajEi1qRwUfAeiLX+xIIzbiwnTv9HQuc1sWbFUDVnczY=;
	h=To:Subject:From:Date:From;
	b=Rh0Fu523hXFWFAhj5oNsL7fVmyKDr5RbCFiGnedTaguPXiQfxdTn0+9kP2BAQ8GJt
	 Y8zJAJF+foGZ3fdytk6dtWNKbpPrYniWOnkRsp3ARU+P47XEOTvXCXx+MqjdKqEKMI
	 m6F8UFVsLCQatW9X8fL7Tz39QssytMHNN8be81mgnD3vfETcGRk8GD7f1GGmPn5gqX
	 Qg8ZRZMahiLOV6hTIb5c8FWlLdhQfCtfg5ryKJfvJtyC8gGFQyWZNuoh36+S7rdTOg
	 xu1Cp3+jEeGufsiyPRVS4jn24rjz0btvPwC5Tb1y6Cg15ThbKZEKCEoBsJj2zhHuHy
	 tqP7TjeU7RReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30E6EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 14:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168684114866.14077.337439702846089662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e960dd9eee46606cd810e3f5af5a49330e1d3ab09bfed8ee81901c5aa549e8
Date: Thu, 15 Jun 2023 14:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686841148
