Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17B215A0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C193C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661578252;
	bh=NUZ72EvEJAnSc3pxR+yf8ipfJ7nYQjbZFAW4B5i1a3U=;
	h=To:Subject:From:Date:From;
	b=NmFp1hdGmkTDJjzz2YEG+ueiKVHYInymmoZx1dVHGgY0SKcOEwxTl1vKpoPo3nABV
	 ZiDvOQmHKb28e/ujBZlxuFSxoGGuOcEBItWWX31IFWk9PBNDTbXzt9N0wSle6nuwD+
	 R1Th5lSzFZK84DD+hF4AgH+gyOxlVmswsXWS0brSUtAsXyLs2nStot7J2DPVWeecV7
	 0U34WdhJ7mInhiDDNOlJ0aCL8i4tpzrM75zb/ic5erhW2QFsHy4vwLtqQhdqrVcPFz
	 Erf1sRR6KK/5D175oetMON5trlrT2k15r+0YZHGPLk9gDIDEjzzguR2Tu65mYTo1hW
	 LbeVX6FXPsnIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B995C0502C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157825234.22553.4864420727508386732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9f153d5ca34b9d9b06d7f1f82d050c99ed50cbf7cc24ac9def4c0555854603
Date: Sat, 27 Aug 2022 05:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661578252
