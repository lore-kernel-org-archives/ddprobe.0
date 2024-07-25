Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54942D792
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721911553; cv=none; b=LeFogz1sSUpWybkmZ8VFshvnOdoqMARF+lRxRRm+ZlKK0E5kf212aG7gJm5Gn2HE0l60U3UcGfT4SEKZfOI2qYDA1SFCy/H1It20ZTcMHt9ST4sTpMgzXdJjh1mLA66FPcedmytZW+jXMEAnlcoXcbH18SLzKHj9k99fcadKf2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721911553; c=relaxed/simple;
	bh=dXba3Q/jlxB79wgcMjpX1t1I30ulK3UnvkOnf8/R220=;
	h=To:Subject:From:Message-Id:Date; b=iyNB8+i3HjGHYGMKKIZDrmfnLFZ7Tx4i7DApHpJgym3oFY1lrhmCyAX9iWjT8bCNKiE5/7niNY/1nrl3sBLWP5j5RCB7s/GdV4SigJdd8wQInWyxq3x7x5FtztXb+0yK+F38gIXfN3wamrgxaWUNr44Iy9MzhjRki+LYR2C5vTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdyxMjjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdyxMjjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50FAC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721911553;
	bh=dXba3Q/jlxB79wgcMjpX1t1I30ulK3UnvkOnf8/R220=;
	h=To:Subject:From:Date:From;
	b=SdyxMjjyhCkgQw2b7d0yo6Aw4Kv761VEJgAK4CnxML99AxkFsljYm2YNnAeEtrHy/
	 2Xq5sjNx7HkCsuHK/z3H7beL3HFfVeVeY2WvCjx/+GSXd9idlmV4icZZg+w6twC/zd
	 DJF/CkMycDPyTFqvdEwJZNoDvOr4tUX/ngtYrJNMLNYgmYP6dCzGiPTfhDdcfV6LDC
	 i+YuAszfc6SOEugVzkqVwZ85mwCNG/ELVUD9uaM9bBCaXKujn9WNlIYu2UOXXt2fmS
	 PMd7F1yysmgqX+Tk6B67oCZeU4l/fGJlh1vGbWPPKbHolQziQkUq+799k2QSBWUKfR
	 eu7YojdY9yD3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDE3C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172191155362.21312.7937417349924697360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1f19cf71cf302f018134058091bf7b8a89e16e4b9705066c40740a45dbedae
Date: Thu, 25 Jul 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721911553
