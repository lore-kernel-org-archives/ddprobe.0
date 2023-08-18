Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515FA7ED
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 13:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E7FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 13:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692363848;
	bh=ln9u13NiGtNtPBzhNcQ9cE9/CJ1/iAmi+E4jP4LoZGY=;
	h=To:Subject:From:Date:From;
	b=WcCZgS5RCxFyap/fZYBzajVzQiCgOU60POpawMMRpKl0giX17leQ6WmI/CSfdpq6C
	 q+QmB8AO4AsH2qPPn1ZgV+oHhK/qqs3tvb43VuwadtfXTRLc86041JM3IsEoMUboUz
	 ++gIzSBXUwm75ujqATdqQcO5beeqBB1WIPugft3XssehJu5jFi18qYrlx7L23nrcMi
	 UNJPtFT9mRfHe8novHP6mfR8UFB5DttDJ53GCwWVSPPju/OUf9fziogTY6daFso0kK
	 33DP/8fnEAR4d+u9rYkIwMBE2N2iGEWxIU/XlyG4jRUG7k+8egfVpVjPgB4nMeB4ZN
	 rrfPh+qAUVu7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9217C7113C
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 13:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169236384868.1204.11656473285902261868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20002e2e6e3eff5f003198f4eefabae3496a17cf1ef3728188d40c8495436f0c
Date: Fri, 18 Aug 2023 13:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692363848
