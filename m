Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07C54C601
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgr8v2W1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA7CC433C9
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703113696;
	bh=J6xLu/GOADH8/hXCP2Vnbjg1tErzxp/vegr2IfBlDmQ=;
	h=To:Subject:From:Date:From;
	b=qgr8v2W1GH9EkfZbU3m241W0xafA9AEvoEheSucvVkvWOvYQz6hFIJ+nfFgRdbPTW
	 Wha33ENUWlTemF6EvqAi3lrOFef6eBoUgc9rubtuX22DXn1hZC83LCRukutA1hSs3I
	 IBVXr+gwKpRPAFo0h7lZtGWWLMzgPeJtRS3JiTBaa6sO+H080Ve5lZ+1k1JwgFsX68
	 L7LMBzJnkDVP68N/o+Wv/LmkjGI80cwiH0RC3b53ROpgWLd4GtfArXeQxOZIb3/GXQ
	 qMsjjCEyHOTYg70Va6j5XxYNcORIFlAhCOC0bMaFE1sfKk5OEhkTbtvgVcqXCC8pd+
	 O6xz0TROE2HaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6312FC3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170311369639.5726.18443247734801655140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e33fced6bb5f1d924d991dca1054723a9bd461a838800b99b7228f4bfda89d
Date: Wed, 20 Dec 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703113696
