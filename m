Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81986C8C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 21:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09451C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 21:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686604506;
	bh=8g7Tz/euQHLgELpfX8enG0r15eUykYTXCFNHdYCj5Kk=;
	h=To:Subject:From:Date:From;
	b=uAqETB8h1k9oThxR7hVjnAY51M0DixlxF7DcXN9p3yyJ3b+xbBPwMBN7pKquxf5wb
	 IBZhtupeR5uTklK4SbZYoJDUQs1SaV9w5WTDrz+GcqVj6gKOtK8IzuO03sNDed3i4t
	 TljYseT0Zk23BlSEiGvl0VdZ9FheDUw7zZpLvZ2U+GIoy8D/ahXNaD34Q47XG2jpWO
	 KdIbMpqX+5XoXMyWQHsGx7pM41XwQB6I4ZK1CJxRELcvJywOTpbuw3JYVDakdIe8sa
	 0cS0lSSZWGns+oCdfmbj8x6iXPEWb/Pv32DdXvHcqEHLFkg1KsAq6L8F/rxuL21oT+
	 fuUNfqm3+elpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDA64C7EE2F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 21:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168660450589.1728.4362453795643442260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892b095ff165e8a502aa835e0528a11058ffbee077a15052b1c73fef6c13d25c
Date: Mon, 12 Jun 2023 21:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686604505
