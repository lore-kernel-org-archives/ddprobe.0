Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF58E7F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79040C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665942053;
	bh=MKx6A+0hpWibzT8JeCapLR1J/qskTijeSf+qNF52xdo=;
	h=To:Subject:From:Date:From;
	b=FEZAsnZmpAs68DvOsx/7CrpUR8/s2gF8QQ6oLIHnJNQIHxIaEjgq8P9BOnZXnzHaU
	 rF+73zyMjPfzcLxv3ajc7/HlmCT2vVXTpfTZiRhCyRNKeNllHftoN7IXqT185AQJC6
	 92wLLc1J6tfhcqTnw/lCnoLpkywxuqux0tO3OnOsFBlw304n3e+VdgVDbpBiEvfk2t
	 siJdUlKb+PyFqsHJ8W6VYWBxOAh12GVltrgRVgCn8nLPmzqM2UjPtkbtWjuR2JKKN5
	 V7M3Ux51J1Fs7qHGsqJXJFepUz7NeoqAHOjcL73y+T7j7HOE9vkaMnEJYdOlOAOg18
	 Cb14/dz+1K+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C56EC433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166594205335.20888.13353339554659073111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 821a1c4dd74e34158c12dd52d6e36315a6385a19ef271690d66db9cdd65ebc13
Date: Sun, 16 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665942053
