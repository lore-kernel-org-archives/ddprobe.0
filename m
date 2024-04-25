Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526DF3C3C
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 04:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714018883; cv=none; b=iTLt1YqbexCqCIrYqlCMQyZrb0vZDh/MdX4nPtuJCfnjIzU8KTxTZtvFLRGWjLeievIxt0tfIl3eawLnKoW9ypfyKtfDbrQ8jCSlgIMAR8QigVwx6ZZPQnAhawCcxSh3lBHic/fA8tdbX2dC4r6exbtU4/qE6ogwZ9nna9EojAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714018883; c=relaxed/simple;
	bh=fykyq7Acl720iQ61j16BxhE9aM0R5gbHMC1+6oPcKhg=;
	h=To:Subject:From:Message-Id:Date; b=O1iK0l6vcy/Nt+ZFq2s/R7qr35dAG12zGLLc22OfZMduVS3aT8ri7CDUnoiSadB58Pi+Ed4yKBxSfFJe7FJ+GznO7S/oW1RLZsuR67wVcN6YYKv6MsLBcJlOcdTp4rwoTvrjDfhT7jtuhXed/EqADDM3HZzLWoLVjwc14EkPD0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWbY1/wD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWbY1/wD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73ECC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 04:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714018882;
	bh=fykyq7Acl720iQ61j16BxhE9aM0R5gbHMC1+6oPcKhg=;
	h=To:Subject:From:Date:From;
	b=DWbY1/wDEIO1rr7+EwEHC9lZczVsu8Z0bS5vU8p4bnagwLVdJkx6EVQL0JnE3PxRm
	 IMw2x79OIUkP2oov7VWqYTaM1dNM4SLP55zV/ajaS3tX8/TZVkss9YoU7Ft6JXBCwS
	 zDRbIY6iCqjWjVt6K7jJp5FI1r4HwsHWEurUORU/bvsP2yLJ2tve1GVBAN3ylmpcgj
	 3sgLtGmCC3zXZMrenqgxSOYnzPq/qTXsS2ZgmFAC3bA16mH037NPLp/I6yWmJHVzXa
	 XIeslf28E6WDvOJnBDgCryl1p+HL+gqxhzFEDvWI0zi8juMKJNp9LUXLEyVWH/xP2n
	 7YMXupoiwKwyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF862C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 04:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171401888277.23390.5446990494147652436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdb6358ac9832f829a55d72a33b8656d45948e35e1f905c472c284b14b2fc3e
Date: Thu, 25 Apr 2024 04:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714018882
