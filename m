Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514BB1A270
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728894954; cv=none; b=KJAqXbsjgR//2DjMYCADvpbY8SZLnTyMpBQxbOLOIISVoFgyCTm96pOYD6KNcmkz/aW40s7r36R8Sa4c2ykksBWrgx6l/d5oewCRdVuUKcxlhStFSmnEtx+YTq3qDEHgW5iqsm/a+WC7vyCH+fvhz5fqCMtki+D+68DhSdu/ezk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728894954; c=relaxed/simple;
	bh=eAHLo/xH7qxhc3/6NORePrHepoDtK4b0Y/nz5/eOP8w=;
	h=To:Subject:From:Message-Id:Date; b=QjIvHNgu2YKmeVbhHOZsnXxXq1TkotQ8Vf9EvfGn0tHWiHfMm/ftM50ozGjecwQILbjusynv3QLRV4PrRS0DD5ZJUV3tqcTWCcEEos7A3Yg03gnMWpzsXjNZ1D3hG1lH/2fRSy9K5+L7sFEkg6c/U9o5jS+De4e4d9opG+RWFfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCCyx2Nw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCCyx2Nw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60EAC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728894953;
	bh=eAHLo/xH7qxhc3/6NORePrHepoDtK4b0Y/nz5/eOP8w=;
	h=To:Subject:From:Date:From;
	b=nCCyx2NwgyQY7BVWY61CJNibfz4vI+XLIeQuFysj8JhDMXym0EuMTwDMTAVPe/BbJ
	 VUR68BCFcCt1xTgVK2ObP6feVSgdIaBdjdTrgCrrSh4h6iUrvmwE5awB3BjYH+JKfH
	 pmsSS3IItovoOthNfCWHYZOVE6L7kf0IpIy1Qoqc9vWsNbbGdPw/pUY/jKPdfl3nq9
	 rKpta2Tq7WqCx2DhIuFIJ7jJyl9P9qWnnN1x6xo1XSqhTAmGEr4HS4aXZNs1yxWksb
	 sNREbngbmajq+AD7l9/Llq3VlU8tQGjkUXSHc7ZaNwRlu9xOJ5B9nUs9RJSLdOOjHp
	 FuNO3xp3Ys+fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3C8CFC500
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172889495370.18622.543672427035921762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef2dcbf80e4771fe30b1a92527bf124a751f7dce74735b4b079ba45128a7427
Date: Mon, 14 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728894953
