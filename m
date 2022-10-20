Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAAEB7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66744C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666255253;
	bh=9L/7w9WgDOHrdm0grF53HeW4FKoHd91jh8z36QBnsJ0=;
	h=To:Subject:From:Date:From;
	b=Yi4xafuQJNEE1bzwD0EDEMqrjuJql5Ewg3Ug8aX2XT8QGHspTouFG+nqgyVxkZ+m8
	 4odG6LsayLLAR+xNIffQZefq09sltLEB7o4Os0y/QFsyrFXRJ6coVH4LbMs/ftblqU
	 Yv73JIJSWPr0Bojh8BC0YKCjRurn5jwSZmcgvpf9RIIswlDALEguwclfH5QX6HH2xn
	 qowFk09aCI0qiKKFQIsL3BloUIe18EWcspWfTEjrMRgt/CF6LvY9KTepb3+U+i7ORV
	 MWurAjtgfm1HVtJ+8Slg0Ltzt7fYgciDtI8kyNdZhYy1GXZBAYUGzeXmzMijQU5Gfn
	 SLp7xPHAy3WWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F54DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166625525331.12130.3524125848735035235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dafa0d913d3199fbaf75c9f2d321f3a33ed90329beb92a09ae0ff640954265f9
Date: Thu, 20 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666255253
