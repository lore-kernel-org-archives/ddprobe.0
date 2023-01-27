Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9BD2F48
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF63C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674833585;
	bh=aOVgRmcNw3pqj3IMRi41vMVsj61CXvI3KX8KpONEMwM=;
	h=To:Subject:From:Date:From;
	b=HQPh57KuSh1yzwEAg4vYw1JqFl/ywzdllFyB9I+nZJgmtoP275nmJ7St24qQfCrCA
	 vydrCMhS4JB2OaQCIfaizF2LDBmtUHHU9orUxwA3jhIS+xZqi7G9XdXuVoK49KpCto
	 /eFkmnrcuh45374fA51LmxtwYdAVZyCfRRLPDmH4PNo+7tXKa4UqciXk8Az9XqkL5V
	 H+orVHzMG2w3wx9DfVrakkdnHTaLSkPloApwXLWF5dBCFa1wALUtnD/co+f9BO3hrN
	 wtlnR8o0oW3IaGVGb/L+FqyRMWLUlrnxcFjVDLJJ2ZAwwU3FjZAANccn0kDicRVzGs
	 RKqrD05Nai/gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5BF2C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 15:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483358579.14142.5065998399585652472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ea5dce9f5aa4cb97022693fd131c8ee0b47140c3b19ce5ccdb29e784c8298e
Date: Fri, 27 Jan 2023 15:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674833585
