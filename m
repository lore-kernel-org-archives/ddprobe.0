Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FD311189
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3fAsSH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE08C433C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699345096;
	bh=kyS6jw5HpIedVHsskIaXydWSDe1pCzi2CUa1OQFhAh8=;
	h=To:Subject:From:Date:From;
	b=u3fAsSH1epUfypjVsQ5PVQ1awyd88AvP95KkFEVmH3SbRTrn3uauHgwRfMoSn28E6
	 dFFxGw9dkZwEnInO8i1WfM21R4ynIAwvrCrLSROf12Lc4p0VH+cMDG0LSgnktGBRJY
	 fTZ0GaG7CawOmt8dOc79WtejhxD/oTQiUpIG+6/8V8OWpdrPYXmijiMG4vIRvFEHJg
	 iu7FmmTvPqEOr5SqRU0+zJ5bHdiJmoasleoYuHV8lTSKaDbUDYB+0QmRqNGJCIYPmG
	 RgMnmWoG50bIWPDApqVhhJ1WsnnIwVM3Eo7ByCGH7LGCi2zlHDPyL7DpsbDIk1GEFz
	 Nw7sy4HmSAg5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE88C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169934509638.829.16320481491938977930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da017ae0d8dc8a603562539ced059f34129df04e8ac0298bbda965e50999b279
Date: Tue, 07 Nov 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699345096
