Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C9237A
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 21:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZOEhQha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5ECC433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 21:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697231228;
	bh=H1kPPFVctrFNPS1eSHD3Y0W73ydoxJZjKWMQB8twbmA=;
	h=To:Subject:From:Date:From;
	b=IZOEhQha8/8ysFRWBpFcBUT+sw53JXQF2BClbVJzEDVgdpfaGwXVqOTyo7dz5Yn3n
	 3XgTQjZynmEJdEHNkwzHUJ3L7k4dRQf39xv8WQyLI5ihbVCauchHD/c101I6lPKYf3
	 SbJhGq+xpmf5q2LFMMXcrdmp01mfZK2TsFT5mm/W0yS0cnQ3DCWn1khCkqQrd4C09P
	 Qk6QwEfc4Xv/HCc0xQpC3m+otTMZ/LCpHk4zbRkvIHHRG4ESg1GfDbWcs3r3Iq31CK
	 3/7jBPNKcudfJJztaMCJmIDkb3UdH9TynEftrCF4Z64bA5s1FlPcMCwdrpbJRvUnuZ
	 The4UYzZIjZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA97CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 21:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169723122869.8474.528401193161543000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b391472ebb03cb14f123447f47bb29c7830c257686be92bb42151e40432366d0
Date: Fri, 13 Oct 2023 21:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697231228
