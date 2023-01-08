Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEDC256A
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA21CC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673202087;
	bh=xIMQ6m13/02hA57BkE9PoiPeBbuFzCir5H3qKmTQm/w=;
	h=To:Subject:From:Date:From;
	b=QfYZQnIolL7b1GceSawe2XpkUb1yzi5iNdge6fCJ40JKaYrPcXSyBNnCBU9LleQCm
	 4D7oHFoX+r6g6dcAyi6Cg8MR3tgcvauamEIvnmqxMqx+H3K3YDetZGcdX2rFYcWw31
	 oJKak0TwGAHpQCFf3FyvR03bkH7b/AQ/Aiv9QNSabofozjWRu4qjBYeTyy9MlIuyio
	 WIBm9sDPR9CC1CRVgQCDBx449M2FfDRLCkbH7IAx0KvpTFG2mPUYLgXJdnbIsFtIVq
	 IjGpXFE2Ab8iKnwIbd0ybYlGDfY15upuy7vB7TZ0vOvmqkxt+wGAPtsuArYlRx/xI2
	 y4Yd5EAOcnSjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E81C54EBE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167320208759.24528.11275907118589526189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5455e2a7041c93957cbbf8b39cf766d3ba45c7925e6b61489629137edfaa6e80
Date: Sun, 08 Jan 2023 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673202087
