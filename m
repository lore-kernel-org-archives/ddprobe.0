Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F12847B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDl8Nc7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71DCBC433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702252096;
	bh=595qC23F834KUK72OgR1ASKE/UMSUXXMmBkZUKlwhVo=;
	h=To:Subject:From:Date:From;
	b=uDl8Nc7I6rHLViafaYyTy8wMmvrQdxnK2nIn4AaVLPL2cYt4Iq499LqGCRHLm25OS
	 WxhQkZ0jSAsmAWo8mzzzRQ/aul5DJ5EGxNcu6y8ZXPgzA3KSl7AlzsFmDFfKHdr3Rd
	 fxdYjNDUpunHf/iNLk49NXs+VS9ojdmPKnO+X6mGAJgQpDVLPGjZceP6So5lZLZV9J
	 /Tkw5cI/3uUSk+JF6bXazdT3qnLLV6z7oqrp3AfQs5U+rDlnt3+Pgxlx25ellWe8Pn
	 xAnS2K6+6lKSfbE0VqlR8PIku5IGdUmOfImfl2JqFwworFu5MewlrS46yaZQVs/bDQ
	 GYaRmIctfEG5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B389C4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170225209636.31690.12361831264383778432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d7eb0bacae3ac7c110b2f43bd7c0e3f2a532d5bdd4a1dc365c93057a215883
Date: Sun, 10 Dec 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702252096
