Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EF11FCF
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 08:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLoImCCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4311C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 08:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696928228;
	bh=C3d1tJB1V75HLqyptsOl5Pkm5uAGjkSfqDfG76eWWz0=;
	h=To:Subject:From:Date:From;
	b=jLoImCCdhKE/yrF0QS254KAcFx1PmhcIihAaNYl3l6ajjiqGXEjUZyAkQbftndF+g
	 1bS58Xq9ZCzxn6Gqc0P6YFfKjKRO4qx4VqPFQIAUX0vlMUXuiU1ve1jEeJR/bIsPei
	 DMYRJkpgES9sDzJnIXWtHBH2P5Fy332IYPLak8HCfQ5zq5vsLloQcClVt4sxyRLUVw
	 wLBuTDhW3pRnrAnIVYSCRAGY5Y60vE2/FU57ZzZY2dqHYENTXaeh2q0S8AFRcf2FSZ
	 80K0LFveTiSnDPf+u9E+vUfpCwskwOpdUAZQRvtiqyUBvj9Gep+5AcGhQFQON8+rfP
	 X0D5GQyuAsykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EC3CD68E8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 08:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169692822872.15215.13705919601188110337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be39424142ce80f8471e8397c4f714489f054038215d755f30b822ab672e5a03
Date: Tue, 10 Oct 2023 08:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696928228
