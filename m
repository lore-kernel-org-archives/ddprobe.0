Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC30F24F29
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6C7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668535254;
	bh=RYKrJqaUxKE+/nrmCObkS8tRfS8JFxS5cuLgqTVOGUo=;
	h=To:Subject:From:Date:From;
	b=Y8xsX9oHpumddjJYZQpwCleUe9jEA3C/yEB6esnZYmAhsLVkQi6FRYVHW9i4+dm81
	 RcG94XXlq5oSlP0JPrqWivOUq4ehnGQ/LpNi9ZvF5ACH1hkuR4+/WF93mUMM/AQz/r
	 06Om7xzlApQABssACblfctq0tcFAvXvknNiiddj0BU4jmD3ibm8XUMMKTsv2xFc3o5
	 xinKdFo8lOqMBvTSTjIjPQfBKAOB/czqVUwCkpsSQN9iKCy+WFUNIt6VnrAnsh4Ght
	 B0MxkYWwk6hDgHy5sevPrJ5tjGJe5iAPIavdPQZa5Zp66ZC5E7bgz9iwUejJdCs5Vi
	 MAuc7I30I1VvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56EA4C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166853525434.3448.11159917420560333596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7151e8a04343f07c996e9539af90909be5c8a6e6c3963dc984db7ed088a055c
Date: Tue, 15 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668535254
