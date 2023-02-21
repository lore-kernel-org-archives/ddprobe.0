Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499C64C64
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 16:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03014C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 16:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676995806;
	bh=mowfzCMBbPficrNKxpm/EmC8gBpfEd9LrmoN/jv8ElY=;
	h=To:Subject:From:Date:From;
	b=LGGAnH4D1+EakJ69jJ+vaSAJ4SNxcfnvwbqC/IHS7L9PZFhP1SgyT+a2oovO3R9JC
	 64WudFAsRhpiaK3T3w0n1xK/NWs42ey8tGwxJQgrr08I01KEej3Nw2C216i7hq+xdv
	 RGT3oC2ZeusMLnxT2pIrP9CdoXra0BAcAvq8kQt7spOmOxCNcJI7IxK04hfA/068SI
	 c1jEuTvKqcgjHGN3IYsPYa7uT/G7VWfQ7C6CNimgnsBjxUW7jXPQfcs2pCrv3GfedP
	 wrQMvSpp9NC0dYZrmdKglCHt1x9jeaUP7s6V8++35paZx2wqkOfwTrJreSMPMP7yeT
	 XC9DHSkDSWknA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D623AC61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 16:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167699580586.14427.17258831562111717996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86c70f19d1e65e322e2e8cc6127bf7910d858e5c4ea22043fa124ed2a59bc38
Date: Tue, 21 Feb 2023 16:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676995805
