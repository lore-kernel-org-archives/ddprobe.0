Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECB73033F8
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791522034; cv=none; b=JXcf3thdTNn0tluN5f9GQhGAp5/D2ZlF3IM3IxQGQMYkrnTo+i5EV0bGyFLq7/RvXvMnukMQaHNZ+L9MMf+/B8cXzIv12dU1a/u1w869g7XDo+zB3FzD5plTvWnOp+VNwTdmjODqy8rjul24RwhdSiz76ak/GADmim2ehyb4eJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791522034; c=relaxed/simple;
	bh=U+1iyrLhyPA97Z5spad/IVD0Cy8wqanjkce1imxCE/0=;
	h=To:Subject:From:Message-Id:Date; b=jS1sw7sx9Lp3zSX4Zf/wvwAcCTRwOiGfYfwOx/wMoz0V3cJVBl04/Y8qV1+DoQjDQFflf8pDGwTPpaglcD229kM3AbPOkkJXBRkWeBqmEOxysDclXEhgNIzKRDRjUa5hMhuO67OG1iAfCFHTKJ3/31dyJ8HpygdH7xpo9LlZs0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+8qcVyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+8qcVyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB97EC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791522033;
	bh=U+1iyrLhyPA97Z5spad/IVD0Cy8wqanjkce1imxCE/0=;
	h=To:Subject:From:Date:From;
	b=g+8qcVyVZ4wehs5kZt7alBLARbHoP9Xy76GFNi1iKb+y6mXgMMJEsAxr5awQLVLWP
	 rf2tRUgL9sA6ezFywf2vxaMVfHLztlH6mIBRQlORLiT/O3Mboe5S7J6ZpDKj1FiVvI
	 v8pDIRBctkyEt2gGTSJkqdn6G5gBmOYz6sKgeLR2QVAw9qAF+tHMdIRKOV301x6S4V
	 I/0VGLGRsmBANdai7uxxMQYcw2C6Bps7ayVWGmGu8bzQ4biJnyLumeIUNFUDA69Eme
	 kNhtX9pMV16z8a/jz/pC/Dvzx4qlO3rNZY6lP2EIjZCEBH3qt1IFBUaAh3iqjGaSoy
	 4fhZYXlZIhrUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6DACA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152203368.5742.6268934737973377482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4564a0e443db0b6953eb066206b16b9656ca8495067076270fbc2916ed4a9b42
Date: Fri, 09 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791522033
