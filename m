Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D1D156D5
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 21:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDBCC433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 21:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689025628;
	bh=pkytuyBkZIiB8v4oxubMfsZjCu/38QPlqjJkEA4j/1o=;
	h=To:Subject:From:Date:From;
	b=El/nhp1/ejd4kL1Lkbzn+dFQuJ75JZiNEwMgYByW1Ulee14eFvUTGtwhXExJrij3C
	 OwzJkWWE2Ffs7ckSj0V/0h0JACXZuDrdzTzrybCnHTnmpvh2RCqNkb82VWwbsWjQwI
	 lEdEanrqZJjaF25/oIS1d2BbI3/mv48eefXUNPvGVPsOcxdXlxNDq1h6h1AyKgj58A
	 +y/ANIxXq7ypKmc7bsJHi/+MzamnWad2REB6xrqi+RzGhEIz2nj+mJh36WSRiNcmiU
	 jUQG2/DoE9zw42VciU502DsbabYMlfiZ+SOBhxyJB79VHqJYWllS7p2Ow7WfS33PQr
	 pM7Lfu1ZCFy2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5D4EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 21:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168902562876.14750.17252732100956359993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d01808180361a5e2249c597bd9b2c62a14e804be0d0333737a4ae1c938cd7119
Date: Mon, 10 Jul 2023 21:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689025628
