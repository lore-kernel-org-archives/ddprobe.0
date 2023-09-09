Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8627468
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 16:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDDDC433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 16:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694276648;
	bh=CesqeQw69N9gMNTqSxMxuyBVsXZkAiINjBpNZr6ZFJ0=;
	h=To:Subject:From:Date:From;
	b=KWd4YoOU5H6BCKyOfvk45BKf6DXLTCdoIus7ky2to+ylzC8brROD0yLIO6LC9B6LV
	 AILfKVlnN017S1M58IBTL6z9ISCb4HQ+ly2xC7BcXMdZYPdW2DiyALKIV9WsXe3K+/
	 Neux5REASiDjzJKJ1tpT7nHVXcIe0etAKasK/XF1jSDmi9IBJ3rCBjLRN+bOsi+Cd8
	 t60I7UU4EqPRNe/rjPBlFZE9LFiR60ipE9UVnnBv71pMSis/hl/4PRPo9ngtxBsGOy
	 gwhTg0SZ1MZ73Gt0qn0NpK2RY5X9m4f3wrX/mPBfpSsyOVT7VBmc6o/u32O2GkDMtv
	 Mw1FBu10wDMbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6F2EEB580
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 16:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169427664867.16401.1553978687430830096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbae1ffd7a2ab0fa9dafd34b4d65f3ada1b3f5967dc5d7f34bd201199670e82
Date: Sat, 09 Sep 2023 16:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694276648
