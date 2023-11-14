Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1521FA2
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeJwtseW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84CA4C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699929496;
	bh=oFQ/bssUFxHPxQp4y9/jHYe2lrxMNMqTU9Y7WxBkNkk=;
	h=To:Subject:From:Date:From;
	b=MeJwtseW7KoEzZSUDz0R5q94RFuOTFp/afsxgZyxnIw7vVoznDQuO3ZgL7Ju2TMJ2
	 1k8LcG3mWt9RWWHCXTQvHg89qqEBUdFrxRyFyWro7YGDkdQSXfizvOZCtdOoXwyv9u
	 g/9tQ+YXp+d9e7nNYO8aQ5fLVzIkh9357iILSc5Eztiefu83DbYbyRc6px/h35bxEg
	 vHVTkikQe0388AMP+wljgXzKbrsmHwRJtHTn6oK1cp1wr5NdXSeNfwy5/beLOdgLMg
	 X9ZwLH54YvuXt5ILmHNyq5TQwnZ0rlM9WSFZrtFmm3zrbf/ijwfVKCd4qqD+Jbwlop
	 kRBFyxs+4lzcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F80C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169992949641.14263.5356351931255546825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056ad75c06e966b9174a88bf716bb8b55f9b3bc6dddec9ade8bc2b2eeac22fb0
Date: Tue, 14 Nov 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699929496
