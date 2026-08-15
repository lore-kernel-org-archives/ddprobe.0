Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B789035E944
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786812634; cv=none; b=TfRk+g5foiZYcjaU35DNRlL7KqWNcrr8u1dGvGsRA7osnNC1tFeEbVhlT/YrGSLHjhe10/sP3TtiKDpAg7+SC/jfXk37ihdZJBgnCNKCbdKSAYqkU61yXFu0i7EtMXdAL7sXJoRNOjgYvzcmCTpJ0DBabsIDOtxY9pbH6cvUyps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786812634; c=relaxed/simple;
	bh=Ab+csPfQ7p7TKqyLgSD46MQDfjg/WgDEZ9KBa8U/a10=;
	h=To:Subject:From:Message-Id:Date; b=jgNb2/JpngHX7rGCeGG+HJyHm8C8KN8RoIVhiGxYxNHUHSBR8xnCxKBSimeYf2vB8HJzfTgxM6fm0+C6Ov+7e3srS9zhuiN6Jp+FBImdujxS+Txq40mtS11DVgYnF0NEYsWYS+5TYIlXLnR6nLw0Bv9b1g9QHorGWo/Uiuz/U3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsZKZ/d1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsZKZ/d1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9999C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786812633;
	bh=Ab+csPfQ7p7TKqyLgSD46MQDfjg/WgDEZ9KBa8U/a10=;
	h=To:Subject:From:Date:From;
	b=GsZKZ/d1KDCWk3+IePPr/AUESaTC6R5NJO2hqDmFfwVwmbwd9ZtCnEwD38vHn/hiR
	 ccJxuiE2rLG+U6khsQSQcwKoicz9TgF1J0nhF0Usb0mwDnfvCMjawwy/rxDz0uXI7D
	 EnjisSehmPKoYeNLpcJu8jNDhDHuOq1yaKYx4QXeDOBYgjiEvYFPECMWdiyEZY/Heq
	 gJZ+31MbZxg9X1ScIcKlrVkLdsvF6kAPiT1jobY17l53GcsC1H5yQWsThPsGNI+L42
	 JE+urf8q3Q//qjatX/okhBFNxGJ2fpAoixwtJEW31kwj55xJXYCKsnbUyJrXXhT8Gx
	 fS/u1dVPWX4ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C66C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681263368.7387.15362636777539474509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b960f2a6d14a32c5d4390850d4b861f0217401eda591ced43d9d02bd37356b
Date: Sat, 15 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786812633
