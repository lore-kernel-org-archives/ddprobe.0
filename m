Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A53A117723
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 09:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDq4u3RM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1C127C433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 09:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697708893;
	bh=yc/8oVjbJl7REz2YfcfABrO+yUdtJrjZniBmnR9DGLc=;
	h=To:Subject:From:Date:From;
	b=XDq4u3RMV6brxlhiaECDEXZNRhYSlGOycegW8m+256LnQbVuAnPXPFnO/TVvYK/0S
	 uGMTJEj1tNuZJWfKz8EPuObXCyMRsoG+0foeR5kNqDjzFOgjqMa+WaXMK5z2lGNodh
	 aa4pdwkOFD4WhMi/PzpQst49+QAzIZ691iIPSqRxAsr53g8FB2UD7kTQgjUnR0eDXC
	 lGL4Wmpr58oI5wXkVt+JK/PS1J0pn6rgzMDx5QzyUtJ2x4MQIF5Yhpb6pLljOqZUyn
	 PRz9kSMxInG/FpJJZvifs6RgaveBMGoFKfAmZt3BE9YKILAct/sJCawSGcaEO/of85
	 WokCUFVXqyG3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE5C9CDB482
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 09:48:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169770889287.6295.4180956725169496206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b961f7348689dc1c7730610b07213fd82245d4b9a602545bcdb619fcb43acc
Date: Thu, 19 Oct 2023 09:48:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697708892
