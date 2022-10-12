Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB0415C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A317C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665547253;
	bh=2zxNC1ERqoTf7Acel4yHP2tupj/rV5g2i2t+vPxA4sk=;
	h=To:Subject:From:Date:From;
	b=pOlRUqmzSml+lrT2Zl/uykA8w4jKuSR1aEEGHDTDnA6ff2ZEDBRFmKEERs2W/HHxj
	 PfdnjELffGmSgkhUNx1r9xLyfHsD/wwxcJaKr4qhlFNYMNH1r16SJ26ZGDWySShOTs
	 S1UEMNnokdZ/a7tPuGRIVIuSUkjboGwqYdfnmIB9pXwPUPB8uboHbktmBJHzYKshg8
	 2Hhn3GA74kD98WC9b9+ZIXWFmrLB7Nw/VoOYe3CTkFakAjcv5Iqm1vJKzjDzH0q7kY
	 sRmi8UPfYP/h1V2bKeGWcmKOGXdIRBkZs58UvHhn2/x2/6abLUWKeAEQ9hFWhjS4ZU
	 iPnzdJWbMkXWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59E22C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166554725333.7853.17184772667011092796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67133586cf20a66430be1f64207ea94b00a1aa76000c4cfe1a5abd1126a7c6f
Date: Wed, 12 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665547253
