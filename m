Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2937D364
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 08:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D385CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 08:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683708065;
	bh=Eo1Svz4ZrKaH/oPX2Uj3bSDhspdE0YDFF9QmFvcegEs=;
	h=To:Subject:From:Date:From;
	b=eWmThiKii6feTBG7sw3b/ITVrQNj+jB/Ts3HSB18RMgSCrNw84fpZy2JiHLPMWAZX
	 K+shyb624J3qIbH4mNTqsiNdXdDJDbHiTsmTqIAga/ifqcPSZGdyPy52+hQgrxON+E
	 0Vn3qbJjhyqY2EWY6ALLn1paPZNoeKdnCfJKDcvj6/I1Bd6GvLZiyDDs2CCCnqz/Ec
	 rAvE07cF3oCXyTAPY2C5Zm21Mj7YGwuWfHgX1hUFe/pqfbGcIIBLLlZ0tD+pZ2M8kP
	 o3EI+8yWa+4qx6C+AbhCF/Dg1Kbb27Gjb81FgCEJyHv0luzSt1PwHg8VCIAPyLlTbH
	 CA9Hd1Pk3LqUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FD7C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 08:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168370806573.12703.2124834066295319334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57305924c6c67fe630c60415df6989ffc32c2b05d090256b7cbfc6c050fd20a
Date: Wed, 10 May 2023 08:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683708065
