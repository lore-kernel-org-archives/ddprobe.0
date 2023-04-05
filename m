Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346D27EB
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 05:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D887CC433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 05:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680674225;
	bh=alKZgsXsTK+QVWoQxim/M6tttybqwkHFpmhmeabRAGI=;
	h=To:Subject:From:Date:From;
	b=M4iS2MAgni8XCNYVQeMqptSWSu97l4j7RwdKWu6HNpdvosKxReT1KlxFhV9UHj96E
	 fdl17EmpqAJRzbR/tkPug61E2FUzAxy0UDG/t5hSodEdGq7Re4RjpQbmtM15Z5o1j4
	 Mwk3BNZTIX3Vq5Llz7/+CDVuND5jv52CtbYhPBRgV/dGnLI7MedX19QX/ZGPy1M1MZ
	 qHAfifV+80X5QoY2k9o3/bOAsT3RvIAPIFMRzzFmDCQ/vW67r3SHVZPec37vncsQtA
	 seoMWvIl6iuHR3N6EAr2zuGZ7xrELkyysoGqr6rtV8lRQXindIGTanXMVZj9n9jR5M
	 cLwM9LBa5Vdig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB238C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 05:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168067422574.6791.5627616413128583459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2705e0bdeb92570b75bffd8a5a5fb7fff32ac370a5bbefec1f8efc975f72cb27
Date: Wed, 05 Apr 2023 05:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680674225
