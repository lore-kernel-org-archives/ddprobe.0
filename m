Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C2E17BCA
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768763633; cv=none; b=rL176KMhohvIQEplfB/U27p8AHcGZzKyzcfIrf+5cq2CjIwtSKjTlheHKeJo+SOFBY11/McCBNVMU6l83bXivqJeBahsK1NLOL4+Bk2UCr5oe0ai4VtCVbgf57tkugbu4KqMQkdyh8hkq0UcKywL8mPGqpClGldSF5mbIWlxc/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768763633; c=relaxed/simple;
	bh=otrT0by7Dt2KFdPZi0N7YJi2Dw2bc8EM+BBuTmvLy/I=;
	h=To:Subject:From:Message-Id:Date; b=ePoPdJVqvg7ws+Jn4/BizXvy7FHbJ/+B/QcytMHX0+4uYK8paOK2N1yuvlgXrA2QaOhXO/A7KfsLCQe4YrVBFIyIhQtYv594iUecLeGffmreHH12mxzmiCV9oFkmTwfRGZLnI+R3Mehp69Yyyrx2GzGjIfuSNz3F/4sPI24xZQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEE0fYg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEE0fYg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28D6C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768763633;
	bh=otrT0by7Dt2KFdPZi0N7YJi2Dw2bc8EM+BBuTmvLy/I=;
	h=To:Subject:From:Date:From;
	b=nEE0fYg94WxNmOt2ckoNgWIkLZ8Ei7Dr8cRnwgI3OpIiol50VDYgVboTD3diuzlnW
	 BCKQPx3QcEcQxJ2A2PIIwqP0lMg7Ejp29YpqI4Bu1HokXBqOhKamgN6B0eoYgz88Fz
	 jH8syy3vc6KuA0DbRzeswAqmO50+Xskezxzw9o45E9uy1ME+B6OWAU4uH31Fwugxz1
	 wSHzYqmNqFpMjZT299Kq9c12lGlZ7grRMgA0OiZmQJWv2rBBXmouJOZ+4j7wIGhVRA
	 pIokuNDJO8nc2NeF8ff6j/lvqEQtd0LXpQPpKESZvdiTwR4QEcVcC7M0LEpn6OwRCx
	 JHIrV/W3OzdBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92592C9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876363358.3622.3765344599692066839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766dac9b5ecdf190e6a718f825109fcb5b76faabb7f14c47a479a4408ce66b83
Date: Sun, 18 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768763633
