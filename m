Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7733717C6
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 06:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0339C433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 06:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691215388;
	bh=7qMSfbhz7OY2fjvkHoqbrsXaWHcTagoAJfhQuMmN0lQ=;
	h=To:Subject:From:Date:From;
	b=sh5hukJthu7rK/oFxMo/Vpm2UZAHaouitvBXjQaNzYzHQtvUYBdF36KhF8TfAIZck
	 BYf06g6wQhfNzumyN3iYhUGvkpsNo9Av3Z1L4WdtOriG0fZBkUhfKV0+H0/FfcJUFa
	 2WGkEmtE9NXbiQCI96aeOTkkV9AcUrcyZKNSY9FimB3sfs5jz9WPjjC5jN0b9xDtg5
	 NpoftneCXLQNtAgLAXdhRejdCBeuVa4igQmgkCdRUxICcPvTdXS8NmqBT98E9lGTg3
	 R5mlbu64nOrGp9BkQGoXott/LaxoOYUD4DWigTxpl79XlGAbgzHl1c1sH9kuvdO59Q
	 T7Tf5veYwrN6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2AEC001DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 06:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169121538877.4106.14474470177084063466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b7e14599b3ee7d3bb9e6f8c0d2a6154675f949a9d331bed336b8fdf673ff6e
Date: Sat, 05 Aug 2023 06:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691215388
