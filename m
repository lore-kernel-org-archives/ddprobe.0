Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2842F29
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDC5C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663072853;
	bh=RiV4xgZgeKCFz8TZ3JwDkkGiH+TM78lDVXJFSMQQp4g=;
	h=To:Subject:From:Date:From;
	b=blBFRqjDr2KGPYjNSV2RmFQ7dHSgqo4gW1kvAPspSEtw/UcWrlQSMVBbvxypUCFrb
	 T66SLjMuF2/2uYo3zRcPLnmoKfZaF2fCQz3BOfo1yiEnj1cWsZZlpazRge/41hNVo3
	 ORHCUjqocl4WlhnbTNZM5zCzUFrYtQfkX+jRw+dMjBVYozf8cJZI+6PwIUAOLho2IF
	 UFRIlbwBkHGH4nt4xt1/Z9jnuc4Q2WU9In0qLQ25U+8acNgkdi/hxGjhacRtqxb3ov
	 SwXt74ABZi51ug0uiFqO97It1/O/12LS3vuph4pF/fwuuIARUhdFKJ+zK2E5O04IT5
	 Koxh66ZXtuu5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52076C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166307285332.22268.4672020220416600789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df1ddf6f17e9de8fff29b638f0298b7efbbce952ee37ff6a4e5ffd525b518c2
Date: Tue, 13 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663072853
