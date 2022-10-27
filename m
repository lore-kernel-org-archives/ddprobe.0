Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24C6BA23
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8C1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666844454;
	bh=WTyVuHmBbBlhbMrSW+DPA9TR974dSOOoUGWQRzT46bE=;
	h=To:Subject:From:Date:From;
	b=RHGuZJ1kWhowariWtSbHItsLFW3f2LmwvxU0vCbz4ZSxl3oambIzvq8cSjinbVr8z
	 hzlSkyBgpa2qWhWPO9nlqVL2NGIn5RQDBvr4aiKlLUYdGYiHSSnPLpcQ0jiAEGYK2s
	 tXY6YG4FI3ErKp1ROjiLnimIKYN3Mspfnmy0vtJQeoxqxCQ2dn/4TFirfzZNtxsOA0
	 I+oLB8nnGu/XJyFj9Gp1p3+ey1JTtnZkyH+yqIcg/pJFEZWHPssuR+L63a2+wVzzan
	 DAnIeLo8rLRhwEFtinbuZ0VmsGx+9+UpKvKvlwzCi/xC+572WKf4XvfTIgr4C7RHwp
	 ziZVYe84sz0Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F7FBC67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 04:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166684445431.19736.11530731117550479239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a73751923fadfc6db97ac0d51f7da44f3c15954a840dcc4bbdef4d7a4910342c
Date: Thu, 27 Oct 2022 04:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666844454
