Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC401D550
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qE8MVf68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 840ABC433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699877296;
	bh=aTkb+pENnNNEnH2+BWqOvrKWXOdFtrM2pk5cmtGXSPA=;
	h=To:Subject:From:Date:From;
	b=qE8MVf68Jk9xngAS9IbQhCLfkV+Yx37XpeDmkqS7hJ7hvq30e3XvMm/RnLf0ncT/s
	 8bocAw12zBgYc3JjE+0EuHnEkaFL1B8iiKiDpilnNHcZ+tgX+0JLTH5D+mwI6dOprG
	 SPRVcx8kFFBZD6FD5FdWMwHrJm8/050btrkYyGtcGUYxnjs/DE/dLnYgjrAup+xxhp
	 2cWg5Ig2SgEe6mVQ/CG5h3i9q8qgsjq8NqTLZ3KjXopUmIwMhKa6SO2WropJBYNqUS
	 ZikziT9zbiKUWrp18Onz5x2IaXpsRa2/pr4R1QRwJfCxKvB6ir87mIxsu0W2JrheDD
	 F8LLlLTGAkXSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68185C4167D
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169987729641.29955.4497918539862586578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ffbaaa28f5ea64df2fb392bb4601a51d10ee7f01200118c033722399088f25
Date: Mon, 13 Nov 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699877296
