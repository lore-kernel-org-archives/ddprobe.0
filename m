Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB7C79C4
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 05:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA323C433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 05:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690263728;
	bh=C516W9KdoTgVgRUn/gqLirvZQpZdiDur/98ik2DHJGQ=;
	h=To:Subject:From:Date:From;
	b=Sg/vkmnEIb2xqktKE3TiC3KR+8H4sqxjki5diqi9MIw9xgJDLIiyZT6cy+VC9XmWP
	 Q5rOFfmtcGh76MP3Yx9rkmFLkS+N7k31Z9v0jT0Mo9aHDyJMUpeyjzRNTwNjyrrn3I
	 c9/C5tp7bb7rHbVWLwjqbaCPA2GfCxc2rb2EwcoCbKyIOCd03WR6stzTlX6z/2OuSp
	 SHAlz86DKCH4aZJaG10CMp/W00TznDnRdnS8YxOjPkAfKSI4Hpo2u7YeE2BUm/++sK
	 rTLBWBwQ56mgLTkIwr87ITsoGgE9T7KU5kDL7y2GV90FjkHfPtWsSH1da5fdU8ZMrN
	 D2NMPvJ9eJJxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB59EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 05:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169026372876.7036.575373024541363240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d1117bd97fb264396dcba07cf947624b65a8ecad60707bfe55e33a1660b519
Date: Tue, 25 Jul 2023 05:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690263728
