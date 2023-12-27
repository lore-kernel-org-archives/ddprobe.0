Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF571FC4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQrSdxhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 965FCC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703642896;
	bh=dwKjZNL2G/fz5/+aTllkvw3EzfkxYSO1G8GgHnYmVUo=;
	h=To:Subject:From:Date:From;
	b=EQrSdxhADozOoRVYeik9H8D4gcRRyJIAGOR36lbGTl38qao9UXNqNyH8g5YLfqdgw
	 787FQF0gWTigsFn7jK1/n8aNaHJ+KFU1tDoURoV3fbD2M/o1HnWqs+54bDQNrJouTg
	 qLq4ktriSc6XT7SL06U+hbj7gL9DHfCO/4W0b7rvXeEG43fVF8naSBX9wJr71B9Evk
	 kjoblYSecrbaFZ6MCDJN6QjMqmZvilYN4ViRZeRNsS25B/LFtnQxe1yxnFmU3XXXGu
	 Z9TnpKUhFSHaUkQU/G2/oVDoWHjqirCC13IKKL286DC5r2PrKOuciFSH+TEYZ91eKS
	 gBDA9mB4ccWxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77D5FC46CD3
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170364289644.31068.7269592592931905284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6f2813eeda0f2ad195dc4abd1a824a5254f5624bc138646727eadc079699719
Date: Wed, 27 Dec 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703642896
