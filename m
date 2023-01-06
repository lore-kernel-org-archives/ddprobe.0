Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5377B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93B47C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672989087;
	bh=8RWK++nG28AkceJLfSNtrrSyhFkju1tQRfnGHuqPJIk=;
	h=To:Subject:From:Date:From;
	b=uevw985qazQmhJhyRp2De5gVDPQzcsRmvv2mrY0/1mDI0/o+vdr75SeAw1tQL9Uv/
	 GRcxrHyIFd0a+kffTbP0DmbyeQv/pjME6lObdTV/ZPXmMnVS2ijp/PJlilGQjw3ZFz
	 k3YkcorT55TwfxzHrgDVnK8vLqdfi+rs5wZKey9Pt5R2t6jSaq7o69k6X7tCiWl3/t
	 8+JsXr0Vw0p2KAy7SR9QVbNCmmGQ3CF4iJugMIU18sfBSmq4UjMrtHrdLq6eBr/LUj
	 bChMpGoJYdsPzihp1vq6YdiGRNhVXnYAd9PfdiUmTaGd51WMvd4CiL03tk1Q4+V240
	 zdjq4efkBsYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C6EC54E76
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167298908740.24190.12007019065397252385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51373db446183ce2477ac19c32f72ccb109e4a0b022321db344c74435da71a2
Date: Fri, 06 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672989087
