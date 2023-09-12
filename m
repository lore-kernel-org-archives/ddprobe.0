Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C76179A1
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 13:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A5AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 13:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694524448;
	bh=SQ7w3f0W/3cn/oxbxevyiD5HknovdMiHSltfcia2w28=;
	h=To:Subject:From:Date:From;
	b=jRYNOWAHEIuUoF2ggXLldU2f5v1C5CxAHkXU3Rk2lX9ebIxGbIOzkWx7KQUXkiKrQ
	 ZMhllHdB29jSrZM9JN33CCxgWisqbR1dxOfooR4y7kBZn6suVBBSZprgHUkkl4s5oE
	 KcwpDqcdwzD53wqTnfMADjxpWMIZthv3sKO4mJifOaKJPeTSK9M9WuuA9xzT1V5P8l
	 L0bJcNXwX/ubpnMC+tdSleITeyCs8qYKyMQiQeUpiFj1969yAgAu57CPq9flz06YkZ
	 F8lJSGyzXnvfR5RzGzbykrPB1TiHj8WDb7frqmqG720zM3T9AqvT/XH7yvY39xX9rA
	 +X1KBVtxxR4yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1E0CA0ECA
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 13:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169452444870.9821.12738467756019123934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51583b65aec349a3f1c3baa86f7aa53f7edb2c71e7242943ba4ee6fab4181006
Date: Tue, 12 Sep 2023 13:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694524448
