Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F1C7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 00:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC095C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 00:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678148345;
	bh=TkbgQzjXF7Erq2YqTuqEAII9fpwLGqSJeiAN5t1+xUY=;
	h=To:Subject:From:Date:From;
	b=RWP5OwT/M2P5IdBt8Oc6XCtOGNQNJRJk0/WIndyRsCS++5LTN+qVCLWApjDJa81TR
	 ZgRdRx62xFbIrOa4lnVlRnHMzeZQTbUUKGt1+xPPcfZk5jldhCaJ+e4mSPRRKsk7AA
	 g83W6vYOM0XMMX80bzT+5t7hdb1aKQByQylO1WQs4gNToX30tXKbEXvvUE/wHiXX+I
	 yXEfC6dJUpkjuBldvApdejDqgWZOoILmkSYwYd/DGpG6BexxA0WOAf9F47aGxYnrF8
	 zy1U9EXNMTEwoDiRBgMXEpw88kSK+npP9RFpW7JXtdd5g9M8rWrkqSNECYRP8DT00T
	 I11RmwkRLYXZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4C8C61DA4
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 00:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167814834575.27501.3733897990133946915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d65b9e1ff1a956766930340d91d0c8341f18847b61d0e67ce181e84054ff20
Date: Tue, 07 Mar 2023 00:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678148345
