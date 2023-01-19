Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC640179
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 820E3C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674087687;
	bh=Sc0FOwcMq0deQTRFy7inLv9f/mCR0oaxJd5Zh2pPkok=;
	h=To:Subject:From:Date:From;
	b=sVUH4GM2ctYiNpfwV+WCbumyjscpiX5h2u/G8paskffcYv03rHlzIwonHLHK6V6XA
	 mm15PYgnHju3L9VOiMDxs5P8Pk435SePjwtdDC837ojaDRjaZZ5Jrex0k9ri47O4mT
	 /xw3VOjQCBKSm1GgPUIzfNmd3dnz2115/Gx2C2/k6qG2TvJhni0gnbqyS6oOGM27vu
	 fSL1qoW6JDjgapX0InJBejwCNuajEskp0kFRKjMHHYvkhLKdZdWxfQhk3NHIaP1bh3
	 2cSXJuxn6tchIZxiuuaGZRJ2Bm00j2RJrjXy9PqcwAiV77NjjP1dBr9pG/W1qCKMxN
	 FJ/ztDcwwmKBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639C9C677F1
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167408768740.25457.11282875241247422276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7981db0fd3fa5dd0171ae484d2400317de8745c0dd052085b83fec8a57f47367
Date: Thu, 19 Jan 2023 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674087687
