Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAD17C
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 07:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07095C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 07:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677222906;
	bh=SXGBHZ/zJXWfcLI3paNdsJTdt5gozvmitatrOqL5yNE=;
	h=To:Subject:From:Date:From;
	b=fCCbIK6jNK0WSGGWFPKlKBnEa3gisk95d11KLA4sVALJ0bSvNVxvi3xzUETw1Er5p
	 9KEFdWLLrF33YUjztyWjqbkCVeb+t1/3/AdTpU8AUVV7ALmcNd10VjZWTZnv+LKH0e
	 BbLDnaM/sZjAsi32YMiFqNaoWphUQHtKnLNdOG0D1uhCjA8RDOwqjmlEOPHJoEuIB4
	 NbtAchsh2pUTuFiYsqnaltx9ldb8chPy1FR7kJ4tKpu9gz9o2mHXsHZPqmSVtjwmCM
	 thQYGwTMMGuKui/jSK9Ey3x6m0oS6FSMDNXhi0NBJYq/GyduuzEYCxIg3oSWF3y/mS
	 2HyJyvPe9+VjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5D8EC64ED8
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 07:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167722290586.24192.5645169106206259004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14bbe531f6cc818c226ab284c5707f1b09c14e71bc84b8cba60a9dc324872533
Date: Fri, 24 Feb 2023 07:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677222905
