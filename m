Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D26915B7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 04:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDCF4C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 04:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686544986;
	bh=y2g1Pz0GdYe06s5LWt1oZ8aBzkguUURBbK6HbyfGNus=;
	h=To:Subject:From:Date:From;
	b=ocFTBhIk6kC1TCOY0O2kHEvdwDZYBIHG7cmH6jJVAAC+l7I3CGJRTA0BtVzhOoQ8x
	 nyp2A73QvXqCbFMvWjXYgq4oMHakcrsTnNKQ+liibU2gXqA6iERHVA5eEQBIzp3WA9
	 YsbupVfpmpK6FI4jrHqEDtb0RggDXia0lFDCaz9dBI8rqHFxIGeOCUAiVrkj2r4Suc
	 I550n8MK3EvIFC2h1M54B1ylCoWXV1mIcHUiqkLkLPxNZS/81ECN+ffMWTb3tVt4t6
	 akDX1tehbQf2pUtqbqJ31U40TuamH470B0CkyHM/dRXuS/1p9HmUsGfo0d+NN7R+et
	 URmk7CY9gtasg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAECDC7EE25
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 04:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168654498581.29919.12175705801169366651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d6f878739008ded4b73730d3de949ed8573ddbc532d90339d26657489733388
Date: Mon, 12 Jun 2023 04:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686544985
