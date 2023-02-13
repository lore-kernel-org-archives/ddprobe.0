Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A1733D1
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 14:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D450FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 14:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676297045;
	bh=5YmMMTM0NSjAGdktfIaoWcUukdGmIxHbLIWT029ZkTI=;
	h=To:Subject:From:Date:From;
	b=KJP+m3T9IsHBLKRPIcDx2OzOCxFG5jZTGbf5a5kMcofIuUynEJ415900Tuuipv31Q
	 s6EdpFhI72Q6VtoY79dp5Lj4sQRYoEgBRcWGxB0uUkqkJ6dFmwYDv2J0kGz8/vwQHw
	 SqeyEWcY55yl3OGNIlUs9HcJSb6ApwGOmup+1yzbbk9zd8QQGuME7rK3Zvy3cxRfFS
	 ZChxrLByWcNFhofhSKVgNeFlbnPMlUJdEZvrDA6GEo2EilF1PBe9JtXWwLLToHWqvT
	 3wHLRjtxIANBXyDIWQLqaysPNBL6bd+leebv5D/f20m5xbWftCRN3s+CE23T/0ry1u
	 DIltQze4SSamA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2761C636D4
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 14:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167629704572.13085.12966998702013764275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e3a3272edb923351143f203fb5235b93e51be354df2ef1bfb25d4bb5ef4209
Date: Mon, 13 Feb 2023 14:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676297045
