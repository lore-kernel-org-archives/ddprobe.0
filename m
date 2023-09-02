Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7176F17D2
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 07:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6F2C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693638248;
	bh=n0xX9BSz1zg5nOr0CUGm+HYjJX6d631Q4VyMXKCPSb0=;
	h=To:Subject:From:Date:From;
	b=kDRZnvmj4qrL6Enemb0vFb6792jATYEUV96t3Rr77YH3A8tprbGYmOkw+a7U9GJ1W
	 BwZ3HrG0shHIcLqhfLCFRHWdf6/CQB5Svl3WckmWcW8WHmeIuZE57gRfKR78ta4abZ
	 g3lr8Tua9rWV6Kl/28M880/BvccrA0Gb9nQ8oqMqxefIeHGQAPOVqZwEoTRaCsFtyf
	 lZY7EDADtpbclZQlI1IqT/Lf6eTWlFKNbRxz71f0pXLrHTgJj/5Dp75Yt36+AIGadk
	 qv7bi0X5RixcFO+xq3QCvUjmzKGwy2myiZ72jbe8jv5xRI53u4GEPHoi8liflgpL1s
	 R7YcsTdbs7Mnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE638CA0FFC
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 07:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169363824867.29696.10415699255397297419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04918e898fd15c59cdde1271c47b654ee57d02300269b406e00b17e6f982cca2
Date: Sat, 02 Sep 2023 07:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693638248
