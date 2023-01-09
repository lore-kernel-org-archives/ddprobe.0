Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE5A2F21
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786C9C433F2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673270487;
	bh=LLCziM+qderMmnQgfw38Q9IfOnLn92SSnaeeHY7cffg=;
	h=To:Subject:From:Date:From;
	b=NqFIV/STPqmeF58JQe1chfsXHKvxMp/NpIcjgxRjKcMYrx+JMGuD/qiaIdalrmHgG
	 1yE1TBIokydu5Om18oA5jL0TG+pdQMjk22cJ4RAGhnIxjnG+I9iTBOuUD2U3Apwikr
	 5GT30wIVObR40Fm0N9MjOoS/wv9auxyvG897x+F5/PIyFtHakuV01Hxo4hZNyKe62B
	 7ebvXUGS4P98iwjO9CrXEFX3KDXRj9BBoF4r1Ucc8Um2H2HWYAT+DP49WbffLcOyvT
	 Dg9CXkvJPEzGG98Hx++p3Ik58UFmm87FkbLxzGANzz8U0inAEHy9DiXc8JtrVhCK3S
	 iLH5/0T58ReNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA6CC54EBE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167327048737.3737.6249988538561885120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0fb7260410f669ee375774455a6dac2aa5488a8d98ccd11871a298cf5262898
Date: Mon, 09 Jan 2023 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673270487
