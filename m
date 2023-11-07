Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E5534567
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+LjrupN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 851DDC433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699400296;
	bh=DtdPA2S7Dvobo2bHhboKifVjT83GHcBGAG0lj5geAEg=;
	h=To:Subject:From:Date:From;
	b=D+LjrupNOepUpp+V5ecEGP6CK3Pb9tFX447YqRQ3AJ0YXUSUlbX05xIBkThzwn87f
	 aP68nxsbmN68w70aGJH1+MhpmfnDryMuLIr3so3NGBxnq+MJWDm1DE6jM96xUzhlnS
	 Zq4JKjczZkP01OoxCQROc1xBSlhoamYE00Dk58cuzZ/iNEXZ/dMU8PkPzwfxvivDtE
	 J5JcxhVJCvzduW09QI1bKDh2n1mdvtUlEnuSyQ38u89VWObJhlDKt+dGqNnWKxzF1U
	 /0fvbnYkgFbKudY/oJ6qNGYIGSllzucq0vyajoHrobjBcKkUfDCkyYl/l4Ehpdi3ZP
	 TNfg4dYsXX1Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F2EC4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169940029641.3327.982058787002084678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebc44d71ebd7664ef29e1a8a9dd6e73a06232b04daf69b1342d687d19f5d6ee
Date: Tue, 07 Nov 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699400296
