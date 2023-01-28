Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5025A23A2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 05:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6786C433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 05:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674882185;
	bh=x9/mK6Bbcplka+BAgPxfL/p21bXX1WwTUb+WXjhCmDY=;
	h=To:Subject:From:Date:From;
	b=eB+k4PHRhC2Y9Sd/GNggp0dl+h/zCKIWtx1f/lxoEjWdih+PKF/SouxMuSk6ABWJE
	 +5GK0oGMbgbUqT0Iu6ajAxFmMePor22RUjRJTtVK/ZlbCpfhQLtF6rIuQUme9sqZw1
	 384JtG225I/pz5jZXWWwjkQ+nPu6ZiJ88zEVp1eLbKlmKvdb6SF9su2POyvfBBlK9L
	 aZwxMa8GH70cLRl1X27Hm2xmkTNK51c1fVxp+BXXa/+pgTS31zHoAUaZh5guUp3Ocl
	 fmLT7OrgpbKG2ZYVkcYpV2yXvuKeegyCfFnAUyCFpdWf6X5URNaVq1098BVU859+KN
	 wzLFGJDdlSn3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C65C27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 05:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167488218572.721.17100930151597970792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bd3dca4d82b45e5a1e5cf67b35a21cc768c63a893325b249cd4bf5051d3d41
Date: Sat, 28 Jan 2023 05:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674882185
