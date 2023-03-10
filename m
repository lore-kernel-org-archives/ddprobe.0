Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541E87E6
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 01:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1CDDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 01:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678413245;
	bh=I+xoatB3ZVxOTxfSIQLQi91jl4DXDnv6EMEc/LOcdCQ=;
	h=To:Subject:From:Date:From;
	b=l2ac2gBi9LTHp04nJol7db/NW/+i0rwCKhjut+/ibhZRqJbctkd3KWhNV6iblwIHK
	 NQINUbr+2FXY2KBrhL0Cc4q4xt1lgKxK9EAl7X+fecJGgcx1f6+S/WAvma5FRuKUjF
	 xYOGbtaANaNaU/Nk5Wv/bWyaKZl/gpEiwhSbIeWSF0VIK5Fe85ZlqJqT+u+mXto8EP
	 hlXmVHW5BSaAGg41fF4lE587Gw1B19CAjakM/iFAz1juywP8nqJDaPD9+BLU+7bvdJ
	 97IschnovYL4BiMrQiazedAXG11bOrMEtab4G4E53uzF+fAC6o+bxbdSnVdHB9wzDF
	 Hk/YetdtqTI6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44A0C64EC4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 01:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167841324578.7445.16483006180034848398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2b0e164fe39ccfa05b0ea942ac574c883d89484f52cfb821f32785c0e30d25
Date: Fri, 10 Mar 2023 01:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678413245
