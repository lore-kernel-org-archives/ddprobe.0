Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375C02907
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 14:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF13BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 14:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674831185;
	bh=TiEeLdsxayZIhSWHF4/bJKP2y35lfGEBN+AxgeatxnA=;
	h=To:Subject:From:Date:From;
	b=LF0dB8lS8K1HJuvh6UmmxmeqHAU0d1NxPVwG9syiDC/kqXcRJyLDPy3vPxqvi7ni1
	 D7UMaV/Pa1oVUF0ZXiz1eR9BJxVMRrVoxaxZYmnNFm4exWrHQmnKltDyZ44W8TZd+i
	 DvFzLLcbYcSFAEaPSy2YUrC7yhZCydpTveo+Q9rQnYDE7PinmkyRpwlW1t4f40ezx8
	 QFuhUJNhJfqX3vx6uBhQDL4Tv15eDvJq/NuEIIQh4DM+gp/ttHs6KEVDwF28lc7lHr
	 weqgxbGPOytOMfy1soV6EakOW+Pcf+NCYTEgVhkZycDarY1Qwqmqd3ipEyaH2zvIfp
	 FcmQclbOEyT4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BCDC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 14:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483118573.23348.15774610371988281382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b921eff33ec5c168650e17aebad5aa0bcf3ea5f650c144ff6862456b02c813a
Date: Fri, 27 Jan 2023 14:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674831185
