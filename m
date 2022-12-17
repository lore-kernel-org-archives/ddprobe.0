Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC55811
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD39C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671274287;
	bh=bsty3/pHPJnu6xP9zSk4pYsKEfkoJsJ2fJq4Lfct3g0=;
	h=To:Subject:From:Date:From;
	b=hB+hERPynGBPNPXOtS1Uvvn4Rq709L3pNF19WG+CSjkD94lxQqORSZvCocK1ODzq8
	 RwMx74aiTzmgwFIL9/Y1wiIOQuHaUB2Pv+MqUDw8iHBoTRXQjhk5ga39RrQuziym+Y
	 ISzuswIPial+wxHCtB8up1qOY18ZUXvB0YU1oU+lOUIDcWZXfr3VzIIStPKcDH1IAe
	 xC46tKdJc62ilEOs3fiPtbrsupaYIkm5Jjt4ixdbXhu01aAT9c+u3+7tfPi5kAiUU6
	 9LG4QZPoihS/D2eS3C7/fdZRSrJ42I9LftLWxu1yu2Y27NC7vCqHdUmWnjlBfvpwXM
	 /pgZJLpiQB0Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D42BC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127428737.8743.13038647803579091811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e341ce0ccd5b15890f4d08775b67e4d2c3bd82263c1833793cc6b7ef00eb9b
Date: Sat, 17 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671274287
