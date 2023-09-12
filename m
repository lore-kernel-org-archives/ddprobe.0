Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2303E54B
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 08:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6955C433CA
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 08:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694507048;
	bh=d0wPHJROVmSH5nSFjrETdhlBLT38S6IMrbFzlS0/yp8=;
	h=To:Subject:From:Date:From;
	b=Wb3m3+wtN+gm0NUTW1Cbao/QjXvcAJQraOddM18V2XrGpGN8rM66F9u81ZNuDeOeo
	 ePwCHUzJv3cCV8TBBTaFvCNYpD/l2ZLDTWf3C2Lag/AgOLRaA1SEksf8ZEuBnX5FA+
	 WPXy03L8Syejv4udshA4wk9yYfvpuZKswBSZGgVvsjDw0geRQ88Xs9n5vqWs9Mf67T
	 9gabEoTcV55E5tLVWuy50DQ9YnVPqEcp8efHePRgBWGprcoQ8F+APsxiYqPxAMYpoQ
	 YXZOFYfrlI6rTPVx+lYz3y+i+XjXd689r6y8E+r/3iUKBpKU2zpYIdOokx6U3Wp0hY
	 dx5L9MezpV/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB800CA0EC3
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 08:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169450704869.19367.1170033423520030714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef88a0ec56e3e005ec8261a0fb8f4f7f9eeefa0ef7512b200a40028260b067c9
Date: Tue, 12 Sep 2023 08:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694507048
