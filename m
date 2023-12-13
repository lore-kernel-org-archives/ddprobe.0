Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E1B1C2F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMQP36OP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC74C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702438096;
	bh=9yCxj6L7KlGGj1O6jQlFGonkro4aI4cqgxeuCkifpPE=;
	h=To:Subject:From:Date:From;
	b=JMQP36OP8lKky7gLv/m1s1+S3BHWKWhQIqCEShD8WMuYTEHFw1l/Ew3uhMTB8wueL
	 KUcGOXZ0V7UV7xOJiU76CpAwBnGQMBshA1qbFg8/sBEstMkt8V38le6SkriisH5G/q
	 YEk/XgZ0DB6w2Si9z5xX1+A9pYS5ZR4s850FHmN3WBnl+wsL4V44Qk4jjSsEiEskzB
	 /pF9DW0hTeA1GJ515nqUpOSsG6vqzgY8KN1cqTI1uTRnCK2uHSKMsV30dqKbdg7W6I
	 d9nJuK4dcmRl82BllSW6wpjxNv4ZAatAFm0BNJDUURkmdq6u3XfSav2LRi5X+Za6WW
	 flSX2y6QF+QJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E22C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170243809638.28059.14465144155371759925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f392eccbcd06daa94c19e49e12195d85eb98925fca1302b6ea4a17ace2cb38
Date: Wed, 13 Dec 2023 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702438096
