Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CFB23B7
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E7C1C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669209654;
	bh=WrklDjE58tbkNZEeoJV/TvOvN8KRQO70i1Randm19bc=;
	h=To:Subject:From:Date:From;
	b=M+dezk1KGn1wmc/tKfRjsLPPa0Bd9m6ByglSaVMwxtxKX4NNOcRNe7g15+aPnkKf/
	 ZvXvPpkzEHNPSeKU7dklz2GBhF8wOm0kP8FxedmHSV+lLfwGAdLdGZNgwUOB5vDbTw
	 qnodke4qnYXl5/OoXg0XQxZPv9q/lzLOtn+hZwkpgxB1DbfTFGtpo6/6/yaPraxmKt
	 HWegxAy1/YMKcwUMtQMvyplPVjSbW64LtbLVLQvADEo0JRJFAXwE/o6b38M3c9K96Y
	 sTrWjspBXHry0u0lMis3LkcvgsZRHXpiaHvQMP0QTqLAsApFNtgfuvnoThNjci7+R3
	 SVDT8i+YtjE4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B73C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166920965433.21964.3405721582069151559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2495300117b3d013c17fe99ae6a457e9ab81d888478c560550055d490a2468
Date: Wed, 23 Nov 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669209654
