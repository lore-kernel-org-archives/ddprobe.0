Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFAE2D0C9C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774127094; cv=none; b=NX84qgn0vy/p0dVl7UmC6TnZqEAungTZY7uKtmQ+SsHiWn1kLWNoeapnsbH2D1pqYRpSHsINFyu+zepZ8OtD2V+Ro4ihKoXWJvr0jTde21MpmGP0if2mJktsU4Mcj+riGZD6IToMhZseOYxdpd3sRWL1X7rb/m4e80me+NHODqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774127094; c=relaxed/simple;
	bh=/U5Zybqg1Cu0aR+tIfMkAQsDilZe56EjvJLY3e+kwTY=;
	h=To:Subject:From:Message-Id:Date; b=uEXrxsJ/lVRllRtGyliL/nP0ni7o07wBJghp+qwdyhdWTu5s1MNEKsNEJSs1iC6pRcGeU1X+WVAEyeVWokV7/mId2lDNJ3+gNnZUZobU55ciF6gPvZTra31ZHxPIN/Oy4GqUB3ORC6a6y4lVVxLkhDnGj7f0QRwvWbKJoE2jsMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGxWyYWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGxWyYWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4263C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774127093;
	bh=/U5Zybqg1Cu0aR+tIfMkAQsDilZe56EjvJLY3e+kwTY=;
	h=To:Subject:From:Date:From;
	b=pGxWyYWaB8S7hCpSrDhfkaZYVRJLQknb+q0bdBA7weU7DOE5tNisYq7DAdMa0Cdea
	 fh/NscRqJvbuza805BMIpkJkppjY+L2SWxcYzGOyGh/+pZz8RMRJNWW1XMwvv3PcTE
	 lDpy/GyckBruflpqRQa68GkRWeg5z5z78xT/NNgXHqSnCz+t2kn+Bcf3MK44yC8fZX
	 tbW0Pg8oRn8FFuGQVB4aTxY/tOhpAdYc2urv9NnPLfpvz08CSwUnt3CCN+zWttzTGy
	 IL7czyYeuFZrMSL7Tr4QeBqb539wg1P2kxUl8ew5CMv/8pEh/7UJXHKfmqSP8kiCvF
	 odZEAe6fEWhTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A0C109449D
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412709362.27174.12723959968468080262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82492b9fd0884dc7b796aa85fcf3db12f0fb00beea1d40e1b5cf4fca4e69d530
Date: Sat, 21 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774127093
