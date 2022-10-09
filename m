Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28E47E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7304CC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665276053;
	bh=nbRJPPI2D1PPXuK8n4LTZhlOc99OD/zTtZYPcSYma+M=;
	h=To:Subject:From:Date:From;
	b=nnr9T0gh6bOfzhNlbCCucmTrs8TCSoHsHXj6bJXYDlivmJVOVHnr4OhzhxQydqsPX
	 MxJem34H4NdySuHdw/3kfmm0YarKpQOwhIghrjA9jHuHStn+tLTlyYhHPm3iK9OPcR
	 CsFZgvFh2VX5mHfxv+FJIE1XjODwzMk0Ef4QzCxYV2QXg3OYhpGNZ8TDiS7qc1DdDX
	 91z4hAEM/iFOF0wUVtnUJRs80vuJFOMjzucagYIvaixy2VdNOd372NIGMQCAV1sv80
	 hPBDCrPxyk6wrXZMvvJNrM0rdSONrwpB8Ya6wbbk7gzCtYIRm5hZZeEngSrK6h11PQ
	 ndHleQSjXg3Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58276C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166527605333.4954.7982733313836754722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c583c48ac2a0b6f935e502d201b67cb3214c894dd349e9ce7f86c2903729fa50
Date: Sun, 09 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665276053
