Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D301520E2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA6AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673605287;
	bh=1P24tzVDHdsg9abwidW59PIZ/7Fj8YB/+WCA5zucloc=;
	h=To:Subject:From:Date:From;
	b=e8i8AfE4+vS+AAXVLt9qkbyVSfoCUNe9SwHII+Zq1XrDwQ+kt12NQ9o/QP3mrDV3b
	 dmNH4RQ8v57A3WGVtbuC0LqSM93MDdOz9CVzcvFWXzpTG8+MDWt7F+WQLcHeLxqrAA
	 TczNQdQnKGFbVev5C0y1W+a9Tnbas/usAnb5FxC7f8RU0TDeFngaDmJqni6HDQTZCP
	 6h7rhybqnkLT6QgV8zUi8LdeR+pEwUvXgN5Ufsm43LuL1c2fwqLgnFVR6Xq5f8c2Aw
	 d19uSxeVaJxZgSW6JoVI7Im0pFKHs6G0lWBK1m3a9E3bjHoOg/S7nph6dpHHbBaaWN
	 liWhllcW6Rehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66346C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167360528740.15103.9393925766468992315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f013b1264f8c22501d5db73e6c2e31b68a6ef9bb86c8d7cfb11f4fa635f25c7
Date: Fri, 13 Jan 2023 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673605287
