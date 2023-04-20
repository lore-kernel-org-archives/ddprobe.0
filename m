Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDE1539D
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 10:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F18FEC433A0
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 10:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681986366;
	bh=AokKgzVNuXUpTIGxNFAhtfjt60bTxb3chBcX7C/TGho=;
	h=To:Subject:From:Date:From;
	b=rwXo5mc4deO470BYGr12tKho4+BOPbNLafKipZWFxQfx4335wLuIghCnOWrc0Oftl
	 hD5iY4oUe52JO1X/wGiwJaCSBChCOte9qIvcWcbra31IJsjqONNzWr/WV/z+rS+Lr8
	 QbDasRS0n6GmqzHDORVe89SPxxWyv5mXisHU4ygLcJzpXCgUQB3Cqt+XHyF/TBVdfQ
	 EbqGUiapSDuRUnJdDoxk2/kDYoZj/H+u0p7OCdPMvMs0U4SWXhVOPqiurPrqM5HVn0
	 gLPrb5gJzQz4h6t5OJo16GYcFRJWxtxRVdwsokzXoMwS/dwFwX8+pSC047Uh5Cacdi
	 KB5Yp3acINDfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1BA1C77B7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 10:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168198636584.11009.6773544520497189922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0716cbe270569ff9f082534868c9ece7ee655fa86079cf15bc283cf433cf9575
Date: Thu, 20 Apr 2023 10:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681986365
