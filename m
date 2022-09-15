Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAFB23208
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DCBC433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663253453;
	bh=Ap2u4nmssEhT/xLW/g+1/sqv6Ur265af0prBUKFkXp8=;
	h=To:Subject:From:Date:From;
	b=jtdccZrURuUsrPAaJPgY+DkaxuNfirND3l8OlB/JQ6Ftmvp0fbr4YQ1LQFs3IDYMl
	 kAwWBNlYCBLOtR0nNvnVFbv7HfhyhSlM3LoUA63CKmFCDUq5/8ACpiKlQGJdcXf3B5
	 IqmC+K/9OrWC7u1L8DGkBfcmAAc7sAdw7EvYIpY9l5AQwmwt5rtVoxeW1eQWT0+xkI
	 Q4zKCYiwXCdZZ7yuGHEInDB1sAgYEVHwDvxqqqANDzYgqCgRrq2jZqtDFoF2lVdAhd
	 KJD6nBxrm4b4ml4lvrQ9jjFIjX+s9rZyBEfhHTPn4SCQSgCCdrKk0T31g9JwyiMWHc
	 wci/6JftnDq/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543DBECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166325345333.8777.8285161634454826544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1263b45c018f98b06d4d839a55783f3359b7911fc7a31546f3274e68a467ce
Date: Thu, 15 Sep 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663253453
