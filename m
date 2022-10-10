Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C6A33CC
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69122C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665426053;
	bh=w2UrYCBCZz1NsF/J+WG97EkJQWRvdWRN1rPod23N2DE=;
	h=To:Subject:From:Date:From;
	b=Rt5jUdc7x+bOwOmgktL9bwxjN4QVKZVeTJFR3v5I6EqNQ0Hzhn9XvRBWgJO8WVUzS
	 dOwisHlXfN75QPNcEyzWJ6UAoHCJ2ub5+Y0EUESCRZJQaCpvajS0IMeNH5a0G5Fq5k
	 s0ZN2IDNdBEGT4DmBnNIwtL7lewknviw/h0UgJ7JfLfL4FziVjsLiZzFPWvkBWT+aN
	 eNvOtg67odHotISNi1nnsCMoRqsGieT0NNJJz3Nxn6k078O1sSBgRIwXaHQEp8pikg
	 T0Q5NNRbXjBtqY35gWVnb1VNE8W8qcldYjpOjLuYkQXWlvmDsNmifx0WUCmrhBRUVH
	 4zjSdsb95FerA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5043EC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166542605332.11977.3118403832323638313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633bc7cb9de6e4b6d6b51383e9be6def3ace909d3baffb618c6e20e9a24f145b
Date: Mon, 10 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665426053
