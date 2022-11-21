Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60167E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 752A6C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668995454;
	bh=QwWk0/7S4qb6UBWt8w6Oe9NXswngNfd7UaRe9SON0Hg=;
	h=To:Subject:From:Date:From;
	b=bzgZQHDus0uGmXOJNOiodmrM37KULdmVGsly/bVut8/YZUcfjOy5tKOJGWaTEABV3
	 QHilMR4h4R5HExCz+s4ZiDa8O3MpSZDc+MtFP0zHAPYb1n2jjhWj4d+QKWU/7dF2N+
	 /x+BVBYapg1jL2UreNvY+77Nmk3Efkx0yVTAy5XiMeJ0EgYvqsahTWusQ6KMe/dc0d
	 UUakqR83of+IcCaylFa1K/TMAgX7IqAMYi7HtycybvJqD3Nn/UQnyVUJ/R7+M2O9AX
	 V5cVh6SXEOTo0wSECt6n0TljX7qAi2yFE3revs43IFUagISA9o4+IxlMpA4Sk1gUV1
	 L3YKs0QBSk8xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 591B0C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166899545435.27098.584912541737532499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511fb4e801306f3d589e77d5629303baac2bd65c30e6046d6aa12e89e706ffe5
Date: Mon, 21 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668995454
