Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0993FEDE
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 16:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F26C433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 16:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692117788;
	bh=ppE8LIP+lL0dV739gPDw+lfbNkFYd4LKIUK32AgH9BY=;
	h=To:Subject:From:Date:From;
	b=BViC6USFlWI9FH3JCjKRZ3U1/lpOxe0jTcBNdVUzlHPO8aek8u375rG/oRPYVwWg2
	 2oMz5tatYGCaR60+NOtrzPIlYQAN6cEN/s/CvbqsxyhZdkVB77BFgq7KLZPg3lWFtD
	 viIaKeR6xjk9/U25qi3sXFZlY+CXJVkNztJPbdRUrphAMbThH2CTxdc1APeO3gaXsp
	 eTfS5tdVR5igRUJ9fQvdYGKJnbx5RFZEpFFghlyuyH+9i3IB9VK1r8AsBDca7j3ZEP
	 acOsGUIZgFjEUp89d2IX38aEwqa9hPlhJlLyzMeQ3CMXhbyyVC9GJdOMZfYk2R4Wx8
	 V7P0UQ9Q7/VcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60D8C001DE
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 16:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169211778873.23471.15574848549216151762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0ffc5fa5097481fa3ee342db73e06588b5e3beb38757c51705d3da68050696
Date: Tue, 15 Aug 2023 16:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692117788
