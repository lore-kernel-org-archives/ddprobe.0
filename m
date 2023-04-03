Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1555683
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 13:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD36C433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 13:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680527165;
	bh=trHBYTyoiiZkfVM6EPg+vzb4CzNrTDBUs+hunY+aJRM=;
	h=To:Subject:From:Date:From;
	b=GJEMr72TG+3L8kyN1fgp4GBuw1Ngwn2CwqY8qbrDsrCC+GdEVKcQVHNfpQZpZ9OEO
	 YmDqksHYGECDQbUYSUnICF2cHcyZNxkgQmDwlXQasmKhfJaZND3Tw+uILhzEpXQ8pe
	 /FRpVQfWfkNdDhjbDTN9femQ8BhjF9c1UFtIwFlv+sYd2qYLC/n/WeXO+62mC/xNCq
	 GlSiGovN7rEG3WX7Ea1EX08MPKGVXSZR3Roxgc6r4+9NqHMTp+O5TKzW4N+jLp0d8k
	 PMETee+P8VltIUUHX5IPmu9NrVAlcrDpOjRF3ZTVm5jPL7duiBYpKQOWTJYDB+4K6B
	 uAsMRf7LE8Zeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9771C761A6
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 13:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168052716575.3597.6097957351928383934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ba5653fafe0f8cff33c44c1a73579544701118aee7420c598e79f29c3108ff
Date: Mon, 03 Apr 2023 13:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680527165
