Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2597C
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 01:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFF0C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 01:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680658625;
	bh=q5g+YJb7lob6O/exKiZnyQiKVXCfAKH2E6wH7tQCRj8=;
	h=To:Subject:From:Date:From;
	b=FmDZBLbMqdSxNis7Bir7attSepDFo+UnhFe2+UraZzSJBLPthovrGmZN9JYC6fJXv
	 pOJrTJk1t8bkwgkN9sfS5RgtcVhN9WlM/9WfvdvtbAdo6N1GMEA0CL8EebceASmZfx
	 8gxSJTbRfOql9W4dO4mWGK8Du99fQNMaGQ61g5zxvnezUF2bWfcydSveU+fd+2E1m0
	 1uG6wA3F86HXRFMPoO+XKiy8S4y0LJw12fAQJUpuA+zry4Of1do1JUk0u5Gf0bokSy
	 GqMXYb5qvuafKYxgyNhlfXZOGHN2jYH+E33MyDVpdH5mLtCfvlr141IxGACwab1Eah
	 swTq23/uZteXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD67C6FD1D
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 01:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168065862577.17660.5009064849163593270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb40326d1fc19f1bd1c32b3db07253bccf04f77f301e2e59dc5a5e5f9ccea16
Date: Wed, 05 Apr 2023 01:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680658625
