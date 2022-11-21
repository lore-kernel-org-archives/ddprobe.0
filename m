Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63FBEC1F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7058AC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669066254;
	bh=bFM3d+3s5CAg5I+W39j5hxCFxi9gXxETq7B4LFzlmkk=;
	h=To:Subject:From:Date:From;
	b=TUlXkG4tfjRsIq799gX7uy18HxuwBUYMb+swGiR75L7I9hCc5z0h3uzNaHNCkpRDm
	 tLIdwTki5JuF0dBV1j6ruvMj4oa/p5cqblhylfo7rTFtmUBp/KJmP/iZg0cq1AnBB9
	 nctjiwZzGOXT9dHoMyA52OrLZt/cb7t6Z3B7eOXn/LxMK90G8oS91X9Pp/3EZFuOHc
	 99JYEqrggOONoPclC4BMNW3jJgmE8AGtnTTpzjpy/m0y/5D2NBUGXVQwOOigubk4LR
	 MeDlyUMHHVvT/pD+h/EtVpAtCpV3IFCeTFgytTKfFHiw0OzRC2mPCLC1sRnCEuHg4/
	 SND6b3vClvxTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572ECC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906625434.3273.2428861650214988639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f5b1b65d1bed930f1f3754730381c6bc74757c722e10cf930d5153ed53b5fd
Date: Mon, 21 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669066254
