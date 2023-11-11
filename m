Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463F679C2
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jD8ByjYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CF8C433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699706296;
	bh=APeQORnSTXKAuqlCKGBEZLJ39v+qKm4aAAm0AkhX940=;
	h=To:Subject:From:Date:From;
	b=jD8ByjYTLfHtEBttfnrVtT4ox+CrkqtbgW1BQ3PfCDFYtNL4XYXTcRs267Lhv3KmZ
	 iyukOaUGfUO/SIqaZWLhQoVaZ5Xl+lyVdkIusj/prWZg53W0RuO1C6R/d6Q/4te79w
	 T73s1IKkshKL4eBINkN0g2jjX01788gqBVD6hIikyZ45DrkbZ9+8dasnF/jgBX22R5
	 d7mpx9sfbrbW5yM9f5gg7ZuzomLvXT8J8WKRdDLY9LLzwhBnCCA6L2Wo9opRsyVKNS
	 EBoUvOaNQztvVsBhGp25ZiGU4SjF2bWrsS2QoMO2k6r5xOfsSxTB/hmrnAAosGCouj
	 rqdr5baj4d3NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86878C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169970629647.13805.2704013033201877021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3f3a0ce47046cc61e04e4f235eb7b8151541dfe2477ca088d0ac07263906e8
Date: Sat, 11 Nov 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699706296
