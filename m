Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECAD7C
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8A0C433F0
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670976687;
	bh=bOhkrlFnTwKWT+7WfKTx3aGy8sk7JwSelyoWajkRocI=;
	h=To:Subject:From:Date:From;
	b=FwzsXj6y4ycpeUMPdX+cddECVi9z6mbquwWIzikY+2y9yDyhM/6b9XzEg4QMdud+R
	 Zv0fcbFSYGN8Lx8h5tBKZmTwRaeciOTVNT3MvolKq1ns5nRFn/waVbgL45p0NEASfH
	 H7Vne4ye6DXaRR/DMpEja/3ik+NTmc/oz7ZP2aQsmDIWyIlhWJsfHjq3U9tizF6jiO
	 ExVJRvvSIcVLnpQZ6tsqKxJJ0m4YZK5RW/jJDZ0lgDqJ/HxcczHSnpL1xM5aeyPsTs
	 jkWdt072cU9DgETRvEtFLdQrLnOgY1dg5wc+jowRg93mG49GUNcYAgY8WqbWGyFLrm
	 PwNqyewrd8vaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6897EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167097668740.9730.12221078213190630306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343599ee0926359494f55c0dc1d36f61d4396068f8e7481517d39b812be0b84a
Date: Wed, 14 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670976687
