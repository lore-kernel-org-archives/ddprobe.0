Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C7D63B4
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 21:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1575C433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 21:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682284865;
	bh=0plXMoeP0b9vBsZOUSv7fZK/OWUa3LMVeLq5RYSLEAE=;
	h=To:Subject:From:Date:From;
	b=Brvj1GNeei5jw/U+/t0ELCngqyXfI0KwEwu3l/vpV7dUGvKhgfBIcrsgRHqAGKfKu
	 yKlPjM6wu53Nl5aazqmUvdeIFlIpDQy7MjVYw/qnNODsvGHkkbzZAo+SrVhzi2yPYT
	 ZPrXHjBmRLrOV8yDYjt+MT1hVxwVtBPmJPWdHrazQcmFpgsCtGlGSIjYawd1EbzcM4
	 uADyO+hZXSvhp2WBCRP/ZP2RVAJIeZnBIcJZGFN1jvZxTAQ48knA+P2J8oeRnE2KGm
	 uv8qFXulA8cA0gc495cS218f4Pev5Ke4cmtVGR0pHQIFUmcELnJiFkIyTYcnVPoGR3
	 WZu2zbmryUKWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48ACC77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 21:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168228486575.1560.12470619587131155614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c562aab2d832ccf76f90b6c448184083104a8fba2295ff5d554d4dadc4b17fb6
Date: Sun, 23 Apr 2023 21:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682284865
