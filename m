Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3680C29AB
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 18:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D961AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 18:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674585185;
	bh=HboCl0L+HSpMz11UIVGlUQZxVvOOEguK6s1ZTMWpNvI=;
	h=To:Subject:From:Date:From;
	b=u/T2BXh/VdbRSZlQ7h66jbm449KUD90RVr9XtyJPpgDULPyXG1yufxXjesPJIVBq5
	 kEH3sluhwcawHFjsgJJCnuWHG/FuMlRblUf8XRUJ/HziDZ3qD/WiCCwwuys207HHkc
	 PNlMSxlKqTC3Z98RhTMJ89fYPaJsOJFN0ciXcepVkkUD71shht5mno6SgkTjYiyXoa
	 fj4xm1DQlFDuuyHpcQJs128Eu0MI9uByepOkdWlzpEySyvHFzDEr25hStFEjLFoMxX
	 ptXLhwT3OrsQIFB1YmfZPKfyStGRPInpnW96KqO2VhiyY+MBin8GNb73DLpoZq5nGg
	 yCRWHNpqe1F0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA25DC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 18:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167458518573.9988.8570572117565680654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e93beac0103cb840c5572188d21aa02e91c3902a098aa13f769b2867634252c
Date: Tue, 24 Jan 2023 18:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674585185
