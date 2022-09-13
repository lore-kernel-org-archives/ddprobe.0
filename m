Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B550A670B
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68C9EC433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663100453;
	bh=eBjVuYEoze3b10PJhLZZG0J1kpvugQh62JXGbSOglpU=;
	h=To:Subject:From:Date:From;
	b=e41r6phfexJSbLIhWCsZS4yY+FcNh63IkchYd0O5Edd8kMweD/OYuf9l+uDU4YoeU
	 OE9xeEoEgT8Gpsa5wpz5qac+Oa37fZvy64DQ9pWthLN/P6dw28j6z7IeGDcMrI3Xn8
	 r+e9AewNxcE7qQGzvlcxD0/pqo1ySq1txIrc6iSizCFKqsS5CuzrwC07SGv/RhLhro
	 dmpVi2QrzCn2sG5OUvMDgqEKDGLHEQcituyrcMFFKqV4X5E2HkENGHvPs3qU8ILim9
	 ZCYnBg86TwVlVl21gMEOwqNZZthYQlzou7BajdQEmUA6qC+TaMGYkB9CO+jx1PUCMx
	 gUUwnax2dGDxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F93CECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166310045331.2186.17527661940717131172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7530a3853c976b7e698bbc5a75404c9bdc745a7c9c58373b2769d98bad3fa8fe
Date: Tue, 13 Sep 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663100453
