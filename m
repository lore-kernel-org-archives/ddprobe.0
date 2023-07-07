Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6120811196
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 17:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95B3C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 17:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688749628;
	bh=6ZWidKFVInaltDibeRi3TZyR+Gtttg6f5H1UlXd56uI=;
	h=To:Subject:From:Date:From;
	b=DtpfcwuXDcTUqAWxDy/UQscgyjPngZT7GNi56NhjRYf0DpiLTs4p7Ld15JPS47Nsc
	 RdTaKyRcTi9c1d9DBZL6KOqhUqejwvhAtBgyoyW7EKvrkL0EdCiam5i62ZfhsjEQO4
	 FJmne/jGrT9jp51sNFXJVwRQdGZC0vuiofZy4UfdKZzDJ2+OkCvyvd1O3TlYN78f9/
	 JjkW/s7p6/6hn6wKm7BXyBFaSd9/kypZNecEgn0b2Z7wuA0Bax11mQ0NVm8yEF38Vu
	 RfIZjzA7dkGY+rLbUhknQygzmhaMXmWjX4zQa9CMv+YNGEVNXdDkc0qISWLS8zHM7B
	 T9ZUvT1UG2v6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD23EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 17:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168874962870.21434.9172779159381556297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d21434ed18409001cabd7ef876b130e66dcdabcdef0ed1335c185751d5ff95
Date: Fri, 07 Jul 2023 17:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688749628
