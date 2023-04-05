Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EC23C37
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 14:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E66C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 14:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680704825;
	bh=Ar7rwUR0zm8aNBONYD2PhKDJDPql7YxyobAdeiC5Qxc=;
	h=To:Subject:From:Date:From;
	b=HPgeWGRcAWu1nv0ywEPgVFE6rYYQElO3b02RGY9dP07hego85sRiyxchE++OhAUDt
	 Z5xDVzutirnXHdEFuHdxNDS/E7XZX+FRxML0j5UnInjsPq9uBf+jw72rt0A3zdDPr4
	 A0l52iK3WcBSl6qB8iotBhNPtI30lGAFhOwYjKoqI78CX0vJeDc/Z86f9Gq9j5CQNE
	 /dgGXu6jTGIi6tjNtsFKeYfYpBlwFZIZCaz3TwuESWibG3CSs5ZSRckuIXucNxdoRo
	 wZB23Uj96XlTtuKVlleZ2ZUM1y7vmgUCJ6yLzH2DOsV3A49mq35iDEZJkj8gauuMX1
	 rWlpXF6yvlWdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D49C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 14:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168070482574.15724.17793701913488534203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7313729df03a9dc6b5808982a9a53c71987e57dabed02709013fc8785cc86d5f
Date: Wed, 05 Apr 2023 14:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680704825
