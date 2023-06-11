Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9B82CAB
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 19:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00A43C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 19:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686513186;
	bh=mW4Ibz7BGiw7Tnn/cVTQzDn4wGZ79r9A5DY3fZUTl78=;
	h=To:Subject:From:Date:From;
	b=odTqLG7VeFAx5H+CuLQoIjISdq5sOwrRVF5AwyNm/ZP7WYFfFkUXW0NP9snfI8VWJ
	 +E/dEj+UluiUneDITG1VvlrMLWXz5sXsNuVyGU50/PBqeHZIc2xMt2mj/9CNIr/geI
	 gBHl/N6kKCJ7uFgyHrL2Z0pxJW5hqi4qtRiQ/ziiWZF5KY0lb0WGdfP2LU4rntw30a
	 oBwkiCH4kvGSQ6vg/ApUtYPyubP7T226atCDVkUvBeDAMlBpY+SRM1yUiPgbcwq2SI
	 G6P7BAPr0KMS3iiO91EKuhyAEkbx3AsRsMTQmQx9jcQ1G0GdoLYRO7xkQPaaziw2Rv
	 rwbcVh5nXShqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4408C7EE23
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 19:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168651318578.7866.4535649071787387782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b7505a9bb0a73f8f20d27a38e1558a6cd7562bc19a1c4fb2b3404fbd71633c
Date: Sun, 11 Jun 2023 19:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686513185
