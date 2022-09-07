Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEAE5C91
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717F2C43140
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662558653;
	bh=jLTHbp7BufwGNuUz/6yJXxLXxNV1pnpU4xsge8cfZR0=;
	h=To:Subject:From:Date:From;
	b=vOCozoBKteWsamdAm0CZffH2CI6UqIcEE5JjilmXCjmrOMqtAYr5lggpMfDhaWIvw
	 WXeKV4tB2O/oIVpxTeoyS28tXuzx3nuPdYRSMq6v2cxZRzKCsdQA6rioCrHBGJjqZZ
	 jXXwxR0hrT/UOQG7C1ClPqhJhaW7Pram6oDOz17iykgmCGmz+cMddYWALqVsxrSY3M
	 sEIUU4fGmHvSQjfA5gEgonasFTMe+XlukvWjaQnrYR0HcrtGU/c+PmrTT9F1P3M4cQ
	 OTRvNOkZfnVU9Z9xCdjOYv5HdvbXYU1v0apyP9BBKNcW7FabvayvSZiqTy3JnPI0Qi
	 q1NOSDaHAgBDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B20CC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166255865335.7559.503182018244062511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981d54fd4974a53eaae06323ed01c070e7f71b81bf282ac39cbba55be485925b
Date: Wed, 07 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662558653
