Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A80274FF5
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755794394; cv=none; b=AsCeKjlsvgKC6NilZdRLRV9He28TuqHiGzM7w0T/EEjS2vnLO+NKZE+OZCESBThcMzda37oizb6CWTFZ5Mc3cvMqF2b/Rdew/2flQgi6dOh6MQDrlGf+DS+tgCMkToUVLNMlefi3dxAzb/v0fNd66ej9Ix5QK6IvlNY3PxSctYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755794394; c=relaxed/simple;
	bh=dmfaX8SNywj8MzEYyj+BX4icRiYLIAOPOVs/ak2m7Ys=;
	h=To:Subject:From:Message-Id:Date; b=NrWyZswdNGyRz1lyFDfq5qISxfxl5yu2I9U9Z6eQNj2LwLNNlnX+N3GfHu69ysIbeRe82CsfEu/NQL8+uEAoF469dfj5GBc+LWH37Pq5poefodyxBP0ioJppw38etxOPdGqNBNrFYUiYsG9KAc+MlEh2E4ks+ZJQGAIEc7pI/wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHpeTMPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHpeTMPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E018C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755794393;
	bh=dmfaX8SNywj8MzEYyj+BX4icRiYLIAOPOVs/ak2m7Ys=;
	h=To:Subject:From:Date:From;
	b=BHpeTMPrOCVKQolCauYzv/Moe9Lu1nK1uZRCir/p4J/auxif2aCg90l74HO5J6T+I
	 wVFcBF1zkV7YDxOwUsarKI9vnl1kgpUDvZN4gtQxyCOb+J7b9dzsn0MARKpBFRq5ZJ
	 6j9rGKkkGwJH8hY2mJ3Rb3xNLknUNO+HaFiiR0PNbzTq39/ZZGFZmx90L6WJZq98L5
	 tNmpFU5tD278oMYhL9sYTlWIrvctoDZshuICNmMHKHdZ+WhXtDWhJq4zCrks+p38Rz
	 oEavLkLXzXlo7xhSH9LNms0mRhM5qapU8M7BCcrdQ6++QPbS4HirN9m7e9Uf3avMRl
	 DaeS35OjcKlZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAACCA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579439357.432.16544387398588994428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef68c1bc635cc4bd7ba135b512d48a581204a28838959364fe86504d5d934d6
Date: Thu, 21 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755794393
