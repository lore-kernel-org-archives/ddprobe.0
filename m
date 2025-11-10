Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A1B32AAD4
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762811994; cv=none; b=lexV0CXazb6OrpII2DeLp4s9VCOEyCiO8pRJc9fgGu/I8Tm7uCKa8Q/VNUMGN+JWaGVVydKTTqhehFCn+dDr1g1v+5CRZ+fXD2JYxaDFbedWx5CFF2Z0BbBr0YdbneqKlkSeivNhjQLThB9Wxc90iuFqJWolBkPMXxxwS68a5Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762811994; c=relaxed/simple;
	bh=GaK6CTnJWW+wPfPvhLP3LYKuLXkHpqrNM7BCLB7sUp0=;
	h=To:Subject:From:Message-Id:Date; b=MVc0H0A94AF54AS/qf1d768V66tcj0w3iOmjs70nJcaTGe3Fa66GbkWqmffst5RBCAmypZSvUIjgAU/azZTqzng+HuQZNbUOAOyATbGlsn0KxpGWdB8tnhlF+2AqS9WGLjFX/RkUyzCXZJBOxhGS9QRaRr9x36PJ7VxWrOTTsqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMPiUbhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMPiUbhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B61C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762811993;
	bh=GaK6CTnJWW+wPfPvhLP3LYKuLXkHpqrNM7BCLB7sUp0=;
	h=To:Subject:From:Date:From;
	b=sMPiUbhsS/VrCzLqEXe3gkHqQtts/OL3XNibcoi2SZuMNfzlbl3tYNXx8KAuudZ3d
	 iG8IiYF3cnTQNcaMAqAMAmW50NQOWiiG/ZZatdPtrTleN5FcP5KzytmctmXYqq/+fh
	 FFDElFnypoeVl6czP/8VnaJR3VuHmGIy/zxIc1SC3aq03Jv9O1a/oZ9y+/fSfI+nki
	 mD4OXdnfw6eFPkzIy6KZmElb4bjUUIPoJwrBDPxx9xoNRetQdd3zE6+YRO3D4ieoF7
	 LmhDvOA6rYnV4ec2oh9sO+SVAgjKDByRXor6PriLJF1vMeJnL/6hsDakptHq9RtCLj
	 JA1hdC2Yu2Bkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F54CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281199358.31042.13818214842091906775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83fb31d0ba297573c4f927cee3ab55e3c3e85967508468006127d863fab25df2
Date: Mon, 10 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762811993
