Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE16C8E3
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 15:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA997C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 15:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687967588;
	bh=JHjgTxJ561GVAizjDC1AF+Z3bxyfVtihGxvYtIMeCYg=;
	h=To:Subject:From:Date:From;
	b=dWJAJF3wBtR30Goo4Kjtyg90XjuNp2lzoyC+DLmZt8jrmtBz2Ut84HKrpnAJ9L1v8
	 Y5d/ULQ4IjyffQw9vI6ppDyHZspSa94ykgxkP4EyoxKNBetcilyDX29cslnjuhhypS
	 Q/cgTSyBFFsoYC0BE7FE3wbTHJgIfRpe6mVUFyR6F8ZN/Yv1MKAblRjhMDQ8wThFcO
	 +stcTzoAj09aVVmic7ewlK/20oDi2ZL5C9UdK/jhgI4yt0UFQz1+97Hc1TKwiJa2Wr
	 Lx+z5j1J5dnO8A0R7gg5ecTjxpQ7eJVkFZxxIE9XCLmemT4Kly+zLev7yTf6X0M2jk
	 ndCVEh/hzHjxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D41EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 15:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168796758872.12762.5011216694251069677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbf07cbbc8c05cedfc3168041b0e04316ec387fea7db2d868aaddbbe0434098
Date: Wed, 28 Jun 2023 15:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687967588
