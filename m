Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F8D79C0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 699BCC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669837854;
	bh=RvVku/AOlOL4KPtfjAu/aJgY7FJ0EVc3VJ4LkF+j5/0=;
	h=To:Subject:From:Date:From;
	b=tcXosRq0P8E467mrlQiQTnS9+Rvo1kvWiRvP6hsyhWY7mNBSDX9lhanHbBPaq0/75
	 mfIsaFr09Pj3cTz+gKmYF2+/Fdlk/89f/N+t6swwZ5vRNGEQQY0lbLS/ckjPAu79al
	 Pj2tZwL+t20homqZ14nRFwcFnE5Pl1F3T2dC/mqh5eJjHB70HNUYaPT0CDHPcsrRC2
	 8DD29XQjUAYpbMqyeMxeguYkdVdIuAbeTSWwvYJ3jN7cN2ksRmotCNT6qhZpq7TZ4m
	 ng+mXplCb0iNu4DRgBdv4/0Sf5LcIpPaGka3OOVQUnO5ckHDhcODObP6Ih/obprBcg
	 OHb0cd04+pJHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5149BC47089
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166983785432.2207.9779373661348836515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f0b653e1b9edb96cc8b85a139d91f997b58b9914dfc6263dd8c7e0f22da6207
Date: Wed, 30 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669837854
