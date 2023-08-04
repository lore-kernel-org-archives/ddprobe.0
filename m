Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40818A92F
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 10:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8587C433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 10:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691143388;
	bh=d1FHE5ZSQBTQx3jGepM0UMyFHe2tcVKS32xlDLsKEuY=;
	h=To:Subject:From:Date:From;
	b=QksPMhzUwSiey/Q+I6Y1c46nb/sBnUx5NhacTSjyviWGvGmB6FKHzlVOLgyztvwgO
	 pGmPVBbFbBwStgR34WQJy0137gF+ixQ/LkJy7ij+UxxVzlc4ozMeVszkPsDaKC1c1b
	 S/fMrcyX6OFzbkGzj9YpMYLr/z+sqmRfrzTe+A7679I1ytcMqx8jhaWltDNfOSaqWs
	 DqzQe7oKT05sBKA/zmJNVARbPOFF7EmKgEJOKiMB5zZMqfY3usahQ+GK0UvhCIk7sa
	 mXGZKvtO8EFUdd1spA2Hej2Hdqtw55LMVUZMxEH+V5QgG+N5OTvFXVm8rjR9hn3owo
	 BcYQL2qq0iPHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5C7C001DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 10:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169114338870.19019.9517670199291996116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3da95d76f7a6426cd552d4038ffae52082f4ecf63a23f9181d5839483cc015
Date: Fri, 04 Aug 2023 10:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691143388
