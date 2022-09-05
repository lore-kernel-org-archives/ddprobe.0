Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D276D4C7E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C516C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662411653;
	bh=V1pgItruuaHWpzZSiU1VId9j7/GcHAvGPDJrx+3uP3g=;
	h=To:Subject:From:Date:From;
	b=iJQ7PD0xyQx48rMZXElfRCjnghYPqAstDddmqqpDoEr+5KkXnQc76PXfOuqG80RBv
	 wVm6Xjg9ubKnyG831sdpyYv3vkuE0835LzlBjkyN48QjB4MaUKYRFpF2wyGwhYBCTf
	 kPuG5ep4n48eHO1+6CiFac3wLVLqIh9c0sq8zkPgv0d8K6pMnvkkMmJadodG8bwGjS
	 BDpOL0IyGrlteV7SKrcN+JRL5RpOOuAskSGw3SW6xo8gL7x4VpmRyOorFqtMAFPdgW
	 PNeA8FvdvoBtmFmcwnQOIlADlft7QSqrjwT/fX2C1++lisNinjFdm5/hNYEEGKiw9+
	 Bda4zguCCzJzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5073DECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166241165332.15600.12713464361119375283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9193a11ed2bdac050a8dc8d4aa85220f003e3a2a65b0c48a8f2b90b871a3e145
Date: Mon, 05 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662411653
