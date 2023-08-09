Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C62317756
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 11:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D69C433CA
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 11:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691580188;
	bh=9DjEEVmrZIU3BAHzkv6NKiv7/YZ6h+NkXovVzGh31mc=;
	h=To:Subject:From:Date:From;
	b=kyuhDC/7TPb9ZZDDD0lPwjBKwYFaR+WSNU9lrY5FQgi5UYCOLRFm9kjhIxwM4p9Ml
	 mKPV/fBcfSPpuTGI1kNU0/kO0un/5Zz52OQx5oXVKoi7rIE37SSzyDWnEM+YocOBZd
	 i4fsMMa6ZahPQS+bTrSzHXbwaOo4klS5XZW83ANFLyVPmA9gth18wN0B/SRpDmdN+g
	 kHc6wJMOZ4fr3ODVZG1qd8yi9CFviuXMVXaVw1T39jJZRFsPl9fjQp2UTsh6KBw38F
	 AYBEH85Ox0nUAv/jCq/dgMdbevGt2mPRYC3o88mLsVc8veRWlZEJK2FlhEUUxr5Eeh
	 WPqNszBpt9Qbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA32EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 11:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169158018869.27832.9707684534470194737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0249fb0fa5b35c29c1ba028e9c8cbb07b006b0e28f700ea914bfba027ffe9a66
Date: Wed, 09 Aug 2023 11:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691580188
