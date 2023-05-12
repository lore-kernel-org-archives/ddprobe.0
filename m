Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5811822600
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 23:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6A60C433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 23:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683932765;
	bh=guScq2juiQXCtxYOng1IDJjxsP26XB3xBThdm+P9iWk=;
	h=To:Subject:From:Date:From;
	b=oP4V7ys2z9kj1gUQRuSPm/NwM+ssVeko7TR5elG3BXB+l3fQf8u2fAFss8QsWCyYv
	 gYS1yPH7C5aNQX4PavHdM8E/mxAM0KUboMAa06CaGMXD+1XfQQ4DMidKutO4ZYu/R0
	 UQPj0YHOFl3GJ6/2Xt8fM62W0tY81dnebFQnh5lrumWyDmfQR1Px6z4qls5wZ+n80a
	 xmFY15KkoK0h7Q4nGLJHSVplJO9rFimhJpW6hHsaX6gOX3hk1fLnvALpVy4hCEyL0J
	 uZ2mqeVZmtABPLeDK0xHMwKykB107QAhyelqLyCKLGaJd0Djz9o2SYsTRJ7TfMacsV
	 8bmPNqLZBfS/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BADC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 23:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168393276580.3985.4332630177586478957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d7bc962c769689f2aeb220b2eb5eeff4b86d90ffae89272eb2b9a4477686da
Date: Fri, 12 May 2023 23:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683932765
