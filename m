Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F465CA4
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A02C43149
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669391454;
	bh=JLC5jBwE62547Zq/5Ih6S+RyGFH+XJUCUfj7SkISkrU=;
	h=To:Subject:From:Date:From;
	b=NJiPKPTXdQTIvLJNcNs0tKMbRfLjjmlS74yZzw7knI4k3yIc8IGgU3lKgVvQVtqwl
	 sfSHZGlmNUchrvqla5g1mwmOfEm3N+geuLGYs75tvwgKnJ8OTq+lGN28vJSKiT5yRA
	 +U997S9gsJ0p8JKdZ0PoUTY0iIs/6sMtXtjRpxP6Qcp6Gz+K1XQAezSgxkIVHdQkYa
	 cCLmRDly6lhRRmPG4aA8GfHqmtSJcOdEjikmBRNVd9lZdLA73LU/Wc++dOoueOV/n2
	 bvUKvSu7CU9rFpTPTrrQiKWivvflHT8YDNpGdn0+NM0zAKJ2cZdW1rfZ+iiv1OtxUT
	 q0TFQHz5d46nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5102EC43217
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166939145432.28890.9651795336260946899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290f2f2875d82b13d154293c83132d54416412fcaaba97bf810d874bad297a15
Date: Fri, 25 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669391454
