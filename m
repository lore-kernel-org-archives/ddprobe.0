Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A95332EA0
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773269094; cv=none; b=Jg8doa5CgMdxNQq8FIsN+E7C+R7sxwn1dpj0n9BwBP0zyH5AQ2xs5dGzDDXbXDSu3x0sJFqhBQMtSgr6UkZL8CJ0odi6NrAK9MJE2vN6ewxCAivx5ULpzWptgjAwA4bOYbYU6vPogB4uswmJlVsZeyGVWXqtwZEp+908vgimopc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773269094; c=relaxed/simple;
	bh=aLcKTH/XKZ3QcCiDDLHFcAlXw1J9dGYOqv8I7VCXWTw=;
	h=To:Subject:From:Message-Id:Date; b=ZyBGQG1nhtXtQGGyJgUqH5pvZdhWP1yN5NzrKCqlE9fagFbUULnG4ScrP3xxMAXBQEgl3n8rS9kARZt5ILhdKJDig3uzdV0paxxky0ve8ULiF2o0X4t+N12gyvcFcHSI+eFCEN/p0Rr/ZUOmGmgAGbjsnPF1rMLAYmC2B6NA1G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwrVzX2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwrVzX2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CA0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773269093;
	bh=aLcKTH/XKZ3QcCiDDLHFcAlXw1J9dGYOqv8I7VCXWTw=;
	h=To:Subject:From:Date:From;
	b=IwrVzX2Xe+VVkt8LxgcMDwlWIH++JX6UtsByQEL2N0hQa6HpRGUu/ae4ZQLne7CLp
	 Gc0OPgw7of9O6Ph7QiiXWyC4Hn9XhFUrEmoDow4H3CN2v+ooCLrOHuHhpnUaeo4k0l
	 XTZhQDmbDfIgYN5TGwLWlIDQjj2ZefNc/Aso4j1gyWNKLiLzIqWMthZ+p0wuHXDSuu
	 DhgDCMqqkPUAN/ASb2wrKb/lRgRBiFN65OpjlP6TgPD2QhTD0odpJPTLDv9JeLbFt5
	 kvkl0ImcdAWOyOsqCFcVBOcbqIddceAe3IFrau7NjUs03h98Wx1Si7QGAgOgMD09v4
	 ctiP+E0TbkEbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BDA103E2E4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326909358.21203.11315327478812439146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5320bb564b3a703fa517690f89830ce76f0a8a2da5fd30e346f3872956558262
Date: Wed, 11 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773269093
