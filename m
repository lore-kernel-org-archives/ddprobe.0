Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6890440C
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E7EC433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665777653;
	bh=1pQFD/AlaW/MyRM+iWcJXHGE9mLZgGtIP/l9iecFfg8=;
	h=To:Subject:From:Date:From;
	b=lv4gSJ6TZKKaA/otrUAwfZt54kzRZF2u3jd7MTCwlslZbFH4BxAy2FVC2d+D4ly6T
	 fDrMd681rZE0oRf0aSysBgosPZuxEWP1sP8O0wbPhr9U2SzLdrMXKyAfuu0GUMTM5Z
	 PZWDbU8nj7Y3oaw9h2ZuEv4vbPY4ShX7neNrlgxYKS3WDytphUVumHSk6lKkm73vTL
	 6+F+VFUZWTIGpPiFQy8KP6V3wznPmZR49S8VhNPqBeVISN1jxcTsSunwZXg52KzVox
	 nEV1rd+vLAXpqgS5O8epB+69YsNiMc3aXRdJ9yNjzeEs8kwieaNzs5eo33JJCscHDF
	 AjFoZvkjQUX3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6021AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166577765337.22860.7899118747930442880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b28a87b4d97410c9a122018c525cbf4a099a5a81a5ed8fde7ba0f9c18cf5bbe
Date: Fri, 14 Oct 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665777653
