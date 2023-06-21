Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5593219E52
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 21:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C043BC433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 21:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687382588;
	bh=AVuDrANx/fWprUu6UXRyb+elC4lWrCvYZ0CaXY5tNxY=;
	h=To:Subject:From:Date:From;
	b=I9OQ+zUS7ZuVCJ442pEwsTaJQ7+HWs+FE0W7fj9oULDNzf9JhpRPn+yXmoOqhFhd5
	 ryqDxZ7tO4XI0VXrr/dOIrBSmgR7V3eQKesNxHnfbITyR3/I/wv2DdJsLVaQIxoor7
	 kvdAx73V6VfoP7/D18o6HuZJ8HZFdLJNFcf/QhSq/My4vmBqUsOJSFSlGt55poXrzx
	 EaIfswUu3wFY9DdKe0qq0ISWQJgth3qOqRUynhMAp+lkc5LbcgGFOE/Zg9ETQAKzDq
	 W1GKpe3MNeyq+muRSDZdsjRavDvw0oiTxzoBMLvHr25quoXZx27GplsXDmRhXKz9MM
	 IE5+L7YHKSiAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A81EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 21:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168738258867.9151.5109529995693346868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af606763aa6fd7d2b1fcfd3c27365dff0a6f1a433602d570f47a6927c0d3f96
Date: Wed, 21 Jun 2023 21:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687382588
