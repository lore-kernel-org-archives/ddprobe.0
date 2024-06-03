Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5172912E1C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717421123; cv=none; b=fSZAvVgk7ZVXXZgtRHyOdRw5W1Qut84Rw4O7qK0HG9YV0RIxZuGUfPf7HIpvjhEgjahT/xMlu24azFPKKWQkTtCkbHG3UZ0htE3BQkNei2ZPN9duwTk06k77iMEQb+yfznyBaDICDhBj8NOKVh6wsygkmAJcyqwf0PUSooz07RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717421123; c=relaxed/simple;
	bh=+xJA2Touv+VdHHWlj6r7yZf/ocCyV0ZbPPOVPbZSwXU=;
	h=To:Subject:From:Message-Id:Date; b=Q3O+WNINGDGGd5/G3MN46gBbd17DfCoVMbN6Nq40H6i0tEKIRv0gEl8zK64cQmiuYwQTaby6OcWBMF3JNA5DXLLNrzDWVH8lbEYyUt9hB+sllfum6GDOSQBo73KjIvVvvVCYPy4jwlQzV3RypS7X0t4WKgQNGETBvgHoel/lv5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAfBzbxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAfBzbxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DEDC4AF07
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717421122;
	bh=+xJA2Touv+VdHHWlj6r7yZf/ocCyV0ZbPPOVPbZSwXU=;
	h=To:Subject:From:Date:From;
	b=rAfBzbxO+dzSdrDnv3CQ7cg7w+utMQW+y4+hdbLSnw2F6aT30j3I8vIOMFMcyijJw
	 8YWG/iUrzzxVjHvJQ5NfXuta5bbFxgjMKzTXd+AfPU3jgSqSNlgrFSdWFOGzto01Nx
	 7V1O4832IzUJildLBoZImdNanerWN/ArkYegfSbHwWh3BPDq1l+rG3yjDiKi0Kon8U
	 G6xdz0ugMU7ltBDHtiQ8jID7RoOZR0Y1ydYKYuoHw64DJbPbaq7NUYniCfHCt+QdQM
	 kwTG+8iiQjCu7ooX+KP/pwr9sGNA+Ql4ber8/WkfM9BFHc1EngWi7QCavQoHzT0Mdn
	 w2DE2nOQOoW0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFEFCC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171742112284.12303.4508439826103830237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4474896997f99644914e5e0c62324b47e520dabcdafffb374a5e418298384c
Date: Mon, 03 Jun 2024 13:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717421122
