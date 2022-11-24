Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5B233E9
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8BCC433D7
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669321854;
	bh=AIuKbam2xsqsBgN0l82GLZtE/EFnyN/JIjRE6g3ToHA=;
	h=To:Subject:From:Date:From;
	b=gzyxtfAeJTYchkwAk72Al0S1H58C0y5IieUU1/me81EzgaTJHKa3LLJoJYFb4qrk5
	 TEYvFpalLtKUGIiqDclkBxXnPTUojGylFDpSs1hv37SMyGKv7UHwsL/gfvVK2sACkT
	 sRhjnAYDSjyfuB0FlF/T73Zawi6oeIUu31TP7sjWxAQ0LwRZHlqf9kar7zDZSGozOx
	 8MZduQ/Q+GLURFc0as59FcPB2vWEmU+h/2/C9de1idzmb3qcPlef16BKlqMFb77VVy
	 zK4Oogh6eSKzC4wzo5mVu80lj/UgS2wI8qEqWoQpemFHfwNvhB008tO/4oChQUCQZi
	 cqPUTNyIpxqrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5645CC433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166932185434.19099.15505309963318538242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2fb4e2eb744bc49ac588a1c6c15fa0f4f8935ea7ec400207d409270652b437
Date: Thu, 24 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669321854
