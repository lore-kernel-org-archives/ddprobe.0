Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF9843C3F
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6958DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663107053;
	bh=l4zYieuNQNdN64WjZYLDqO3rpImwrlxPXemni7G1zW4=;
	h=To:Subject:From:Date:From;
	b=dtTtDHzsc5IfEzZflGEjLSms42xBZM45Na2GZBVEclKGrHo4jYt+ZIHkK11RPULln
	 GByM3dJbiX4jQosXdXTMCvDxhtsMLek606tlIbep8D5xPKVgu4TvEXQAbxosw/Yqtm
	 /YCg8opLlWg3RBDgZLU+y4d6Tk6Q1XCXwzYqRtZ7Lcp0vgs9hXfWNI50Rj/ep0G74g
	 7PjhwwILJ8Dngg/rmTXf5A2CGN0++UsOK/Td4I5LpijrqG/QpWZJx2Ut/lxZy22Pkm
	 yAdEpL8iEIuOZY3/ZTwz+ipFTAORu4yduLzdcmw+Z1cEaItGjYjFTPnu1b3PW6NERR
	 Mf7cN6job8Q/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B71ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166310705332.592.353724710345287614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513fafa8e1caf8f054e88e185ebe951568eb8c2461976666acc516f7e83dd24b
Date: Tue, 13 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663107053
