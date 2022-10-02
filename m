Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C3F7C
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7194FC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664740253;
	bh=/ik2aNpncAfEL7R3Zno0Xr6wIqPUSAsvghVzoJfUI7w=;
	h=To:Subject:From:Date:From;
	b=K84F/K9oIQ8MTX3V1/VwYvLxTMWRdqeCG9CdNR4L4qPkFNqvs9bXAjdJlkO9YbroT
	 Z8Lnrdfphs1TwOoB3/GWmwXM+dd7kV+sEXDwW5ikqfmmNpZvsDai9YL6s1Vj8ZZIL2
	 lWEr6kBOJdrzpoIriKNnYL9Ub6ca2/9yZ0KYRbHcrrjWdHs20dys7DBX3TwrqNcVVr
	 pEse/RHus+iWF8um4Tp9D8VL9h4m3IWGVG94oBqZZQ+kCcEX67M8J9qIIsZPlcb4vV
	 8EHAsRCMlyiJew1vF7mxiXsDugs7bf6ZoVCoPClOysc38jTTBI7mOLALeV1z870Qlo
	 3Ypu0HVaXY/IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 582AAC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166474025333.17365.7880213377239638687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b9b8bd724bbac34d0ea69c549352964ea9dc09ef993cb8ce654788b9b174ee
Date: Sun, 02 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664740253
