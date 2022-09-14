Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95B44403
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7785FC433D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663178453;
	bh=YLycfQa66SZqhs71N4xNqGisOFwALOmS47zjILuI76U=;
	h=To:Subject:From:Date:From;
	b=biUAs7fxEbb/DTSnh9hV6VDHPuxnWQnzxV6wqhN/wxhvszl7o1G6QA/RXN08YND7X
	 PJFKxmg85YpHDAkXajiHcy74Oe3Cs8LGNXnSbtnnpUYY9CHb0awjGpUFMsD4/HVz/j
	 iqPR5b2O007W2x59oFIdr+Um59ZbkkPaiwJeCwVG2Mcu1kCptqz2KSMo+yisJ7WteU
	 zekklOdkOrFOIyHQBZGAknqyr2l/GAyQ6LCRGt6lwq8IQIZv+c3jjKKjtej+/sRZmI
	 p4nkh3DSyMIAeKBBRAYYobOKmEReOXB0jm0KCLim8P/yAHkpaOpujEZKkE3Xt9cJrB
	 sxRhkE2pvhr+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5675DECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166317845334.28459.5402019462917293081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40688ad467f3e4f559cab23af814b1a11ee094110e71641a1bd90e9a9ede2957
Date: Wed, 14 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663178453
