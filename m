Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C62979FA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 16:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CDBC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 16:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688832428;
	bh=f11a4ZuNyetrdjIpnuos6T3X8KO/Vd1igbrHYtcFI4Y=;
	h=To:Subject:From:Date:From;
	b=VdooykTCIsrKqHViMzdpbZWX5bh98vgnP/3mbNZejIcSRojDl/qyG7Tlc+0vfDAhQ
	 n7UfrefH9++1hbVZFONdIX+NpaLQ43tBC2Y45+DZANlbl+aV6Wf9kigZJjdmtxVA2m
	 rty/2hy0+QrRNfVnbftMcm8LmdglxOu3og9Vxm2fDr94Udp3LBWat0p3kpVRYBfcwD
	 iYNlAP0bou4l4v3BVLBDjk2aOiOPTy5vNa3DcQ9kIGq8xBf9x/27DOsFpILKXgFpfy
	 ZNGGR9qfxWdrbH+d4LDmGYGTyj+bsCTm4DkEDIYjQ5/ru6a6nLZZ45BiqENoQ36ZA9
	 WwVxjHCHUdp6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F3EEB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 16:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168883242868.6763.14978501676906834924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3d084f0c7692b9afcd1483349341d0af19a61f673aa16c2126b071fbd32a02
Date: Sat, 08 Jul 2023 16:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688832428
