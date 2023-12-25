Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2987C1846
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxomBzpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C500C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703477896;
	bh=L1b2nED5FK+kGff2TUNcNY+1UP+Y2M+vkLZOiQ5uq9Y=;
	h=To:Subject:From:Date:From;
	b=bxomBzpxUkdpRtgCsI2KlhTcoY5i0tlHFXrOqLxZ8CRZHWVK/nXPbdisqyheobjKu
	 ycfJrU18NtePXFE/I/05p6r8IaDT3tEj5iBI4HS8Bp36Y6fYiIITReajaCzhDS/xMw
	 dZ5g1FKxEl7nE/QjacPweny+VmZhbUOV5xPbtkZkqHhUikyojBm7VVogdArhmweYDy
	 ww3hgLldVl7Vw3Hz3dQOPpV1JY+pCsFqtkIl3l2EvguEPMEWj2BO8Vv9jBW5sh7ClZ
	 N5+jvPXUmlsQujbC0eqFw+3RN4NmxVJA8aWuJ+K1UTJvp3KLbCVS8RhDbt+ykrc7g9
	 VqskgTEoBRI9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73CCDC3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170347789644.7252.4610576851563711107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce49bf8c4846c2b512ac9131b1d4e201543902713c10e6f099aace3e970a7969
Date: Mon, 25 Dec 2023 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703477896
