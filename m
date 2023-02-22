Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7D65384
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 12:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D41C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 12:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677068465;
	bh=R61LAzkEWGp42N5vdlY9KH7E/suOgnnW8WJJ+lRANk8=;
	h=To:Subject:From:Date:From;
	b=A56Tl7sqZW7GgjEAtu8W01qzSBZtp0ee4T0gJ7KUYx4m8vw/QZKJYnOQizWrfy1ii
	 5FKEQUOKqQEgubS3K4hLnUaOa+uSYmkR8XoJUYTShtX1O5xHWq1dX8HVYLurwgnwVS
	 94Wja1UHQoEWB35LlWXmAGaZ6iKrg3m8dmJsT9RY/krkxWmoM0sHBBxOhotGu4UE36
	 WW3TvliXc+EZgbJQGkguHk22LfQC14EgwenLoeTjpr+wIvMaI8COpHecblbyXlvTC7
	 bKj2i9VFrF9dPfqAzWplnNeneFMGrWv2JWTtW4W11qcRvlMRTXY3BsMpx7pobrRyZL
	 Pee3ZcDl1UaTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8328C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 12:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167706846574.17913.2983831142367116272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5756068f3e405fb1ff3a7aa9ea2cf261e4015fddb44cecbd4c5011c8f8c336d5
Date: Wed, 22 Feb 2023 12:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677068465
