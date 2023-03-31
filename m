Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625D98F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 21:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02193C433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 21:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680298386;
	bh=9PqfOfG3edn7AKbxVcXidFVjG6Q3gP+m5W+fzNtKDbw=;
	h=To:Subject:From:Date:From;
	b=Dc2fqWIhEsj/acTHI/lL5XB7K6VHBwTz+SGeXwfP5geOvm2U3dQokBrXJlJAikeQS
	 xezZCQK+QbABi/hV87zn/mBRzmPL8E0xPpsBJGl4lib857XsB67n3QVEJ0vAPIiHKa
	 GTBRbyOJdtK+TZ+b1C98MmwOAiko43BI65XFnvQCUjdFHwKO3a6mbR/gzGz3SESSCB
	 MEZiZ4+lO3Op/LAQ+IBVz9luY8QyPtel1RKlhWmXOUXDUTrDDpqU0jIjLTLjDyE8VU
	 r6JcBc0Bi1y5tXasnI943bsdt+QPCeEOy9Xc10KjuLd6/QRqOcro740HJyR+53mAHn
	 Q7Nor0VOQq54w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67C6C761A6
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 21:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168029838579.21827.7434074907823684167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b013efd2b45c8d13bed0e873308372441245b350efd436277e6fab210bb6c045
Date: Fri, 31 Mar 2023 21:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680298385
