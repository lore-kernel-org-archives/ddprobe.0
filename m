Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB09F7E4
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD8DC43143
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665976853;
	bh=vjDjOtHiKsoMuxHx+WCFFs8okUBnH/LzzaMD7QgThgk=;
	h=To:Subject:From:Date:From;
	b=i2FBLf7OXaEmyUaqkuE0tnZLqnyF+yEuxBOQBJpcfoh26/yDA5SrGRSOPN6j2kJDn
	 FRmaCI9slxOatuKiccVaUJDzPyMEKKq1r3lGndqugMmh8JcLJqcbp6ivjGN2j+NyD/
	 qxC3nHZHKsPPoeGtFzBjhNa041fvU/RHd3vmvU0dYjQi2gCBer7S69qRNGeksppX1J
	 gKR61ipV/LmozPFj4G8bjiu78neEAHOely4+s9XeHeZJ8KHrnc2rTvzW4Ze/JXck2z
	 KOmDph7t2wgeP3VCo+C5eOz4RQGGgkOsSCbmbbxxzrBNKpiG3WNVXmVC00c4HZL2ph
	 JV1Z+xsIycbpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A4DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166597685333.12529.10256947228635473637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca5a7acfaacae49e878b9f99e34238cf684b184e37d02198391994984d6a329
Date: Mon, 17 Oct 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665976853
