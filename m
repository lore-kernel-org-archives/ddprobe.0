Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCCB7C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 756C0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663639853;
	bh=tY7jzcgt8tvG5oimEHkQxxCNML/yOTXEQpGKLLCxX8M=;
	h=To:Subject:From:Date:From;
	b=dA8R5VvAlku4kB27+5Wkd62DvV7GXTUIFC8xfceUTjyeLL9hjk3rgX50i/CQV1w18
	 jVLwrSIkymr2CseSF/Z2xDzUOq88aX0Zx0T1p8iQ754Rv8R51Gh1dBWk4/S/4XncXH
	 KE5KLq7MJDrLZtzQ9UZGS9eokVE8RiLAl9YSrTl3DSEJdioqLGL+YedrO8s7oQ5VOe
	 FWpcIzxg7vIfF95fG4f5k+3gS/DPzKMRbVtnMlwf1UU9HfELHZNBWPoLI4Ppq6vma2
	 pBw92ITfpZvt8uTp1PytViWLTesqZbhSbFmXGjjYCqSlxTTbJz3AFw9apM1z/bAVuc
	 RYEXZ4nCV2F+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DB7C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166363985334.31728.9471963142436891349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b73ef636130f4cb7f99e4330bb67e12fa212fc3a265915fbbde709fa22f7a00
Date: Tue, 20 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663639853
