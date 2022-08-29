Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AECB53D65
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 13:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C440C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 13:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661778052;
	bh=/HxwxLrzxhqX95MBzQKlA9aY/U+vX5/YamxzwDIYTzQ=;
	h=To:Subject:From:Date:From;
	b=bj2NNhCnG5I58GFM2a/OQAsRFaihrrSOSSr72hg9EbOJcRVfGtu1I6a6pmnMN4T5s
	 lqJ9EfKbPsXIm159gybwBxcx5OZb3g28OJD8OdhibXqwfuM8u+mcO3CEflvTNZR7rP
	 9CyzTFusSermuXP2zrOQzokaz+O50Raq/a0Kgkcjt6w6NJvUQq4gMGAqaTKd512DfD
	 5Z3MkfBFV1B/h68I7SSrNlK5GnO3jBVPl63Bbq3nNt5WppkmBebfXXyglYA1+Pw1rE
	 CyPClQ1URAiGOsQCS/JqENmPe4a5afpgDoBphdBlzt5/He8BcYGWYIokuKFJ8EOL+s
	 gAB4Nxi2uzciQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53781ECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 13:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166177805233.26538.14457533705885107557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6df646354db9eea98bc51df89a306b223fcb6c5b9bd20aa5ed9a2d92ef2257
Date: Mon, 29 Aug 2022 13:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661778052
