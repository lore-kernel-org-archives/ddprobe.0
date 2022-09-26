Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE090366
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B831C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664167853;
	bh=bD3TjT+7B4hTnMCQDvpxsqxpKfhglplVW5V7JAQ5AIE=;
	h=To:Subject:From:Date:From;
	b=qwCkD4LviQFhUF7Q7gln/sOT3FWfUsArnhEuIMoJJ2pHu2hpxlxx/KyGql92HKHnm
	 qsz3AN3Q8ueiRVxAqb29+eXvRf+40yBj7DRD4aued9SLysRA5ov56AhjqMxHnaFpuq
	 a6ZqyEB5wAOuMAgkQLQphapW5jLTXQHO9oaCpJDj+aK2KxXRRTxJ2AGXlWu9VKKPkI
	 Ls5+cXmd5Zuj7/vSBPmg35XC79fvYL765kv5+0hO5T0sxC4KUJgLsqnwT1ZMi++9ac
	 3vXFaMr58ku/iHXqnvLtj+7Y2Xju9/2Lhtcc6NHuVTslb6DX3loPob6DBORegTHf8p
	 S7FeoTl+G9gVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DA3C07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166416785332.5253.4775894387606303667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96aeb24bb9afd8e61488c1d706d800b2c4f9c8edfe67bfa97299e72d8115bf41
Date: Mon, 26 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664167853
