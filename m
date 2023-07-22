Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F7E9A4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 21:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE58C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 21:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690060928;
	bh=J91jgm9bR1TNLVV/K3n8ZxCVWPcQZVuJYQUfpjkfja0=;
	h=To:Subject:From:Date:From;
	b=gw0b4hsp4UTi/mxQwwdb707UdeThRmm4L1by7ipDAiXQtH3ASUkxS8QqQ7hoFC7Am
	 C64e50CekNjWiQLisO2veGS/Gwr5l09gX705m6no9weLA640+6qW2EinypUUhJlpAf
	 6WVxZvKpKoDlxcgNeK5u6ZeGS2ppIUDpQwSA8w5nsfw+SpwdI0NBQt+VNKO/coaWPH
	 kZJqs9sxPkYPQldvIK/tv+Mdc/Bi3Q9aPXMOHc28WnmU2HWgm/g638a1fpFRSJIxuJ
	 YxlVIb0BdevneBK0/AvFABtMrAjL1AJQWvtAqL9mzWdAXYgx9vza7ccog+5KZlXflF
	 +SUFFDMvC1hKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBBBC0015E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 21:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169006092870.10706.9145798200246377921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b89856288635c89bc02212963cde7cfb4c2e4d750ef29b2ac49a87663fe2ba
Date: Sat, 22 Jul 2023 21:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690060928
