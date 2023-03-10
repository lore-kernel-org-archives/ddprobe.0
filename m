Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3752F49
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 11:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFB12C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 11:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678447506;
	bh=pwLkUbXiP13yeBXJBb+W9UJbwxkVZk3y3l1oT7dyIVI=;
	h=To:Subject:From:Date:From;
	b=P7LM2an7/yv7i4D+hfGK3fwHD3HWEw/a6XjQt37k5GG7rjLt+E8k8LmP3dTqAA+PI
	 oVHWnFCNmkSV1BVepB84JE1A0XYydC2ryqlkNI5181rAT4/FJAnn/dRoXkru5fxBpx
	 nrVWN3UZVL8qi5Akv5XRPYcaAtUbq0lvgBsdhbieKEidZaG0p4ybtEqQ3fTZE0ZWiE
	 q7XKDp1ziwgMDmsSfDd9cl5UVbojAPUXmBpwnBYqXyGUr+r7L5lCmjm+MvzhNHKqbA
	 xRclHh/BLtRuCiELOlHoMs6p5SVQFO4TwsDLIez4AfDJh43q1Y5CDrHjmVamCqsyl5
	 eOl8IlC+NHVdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0EE3C64EC4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 11:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167844750584.11146.5038772087056660302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540611d9c1599e40a474884bc5582a54aa98be4b827774ad5f0ec01f5a454b8f
Date: Fri, 10 Mar 2023 11:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678447505
