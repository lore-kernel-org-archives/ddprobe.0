Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0414E2FF160
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768411434; cv=none; b=ud2zAXtl0JwN5GNiaMNAYDjq/5wakn4wG7oTQogGR9lSq3vNFTtxYsKodFvMvCZ3OT9fi0wgrnmcuWHl+WqQ9fUuATT1EI+tbNRENJq+16bQ1lJpCDscw90Ww63ZWF5FA9wDdw81ThUeC9uzNvF+6kpuXET3Yl+Awcndg8walnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768411434; c=relaxed/simple;
	bh=9bas/y6Ti3wG9NdYr8qXyPmZiCqY6MMD6fPYjoV2H8s=;
	h=To:Subject:From:Message-Id:Date; b=j4ROf58ER+Z68hDJYAUDxDXLPMIGdeUP/YFH+VN6CNpNDqKatSHVjpSqEN9MZypP21eDUbfjaspbsGkWDPg7wLysgJccM+wSYM/+2WfhCZF8PKpOooVYdp+Cy1Z4TEwnQvGcg56/LY2bhBgPXgcx3YLlL4dU3AxBY3hXpv4/l6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYdUVrzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYdUVrzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E46CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768411433;
	bh=9bas/y6Ti3wG9NdYr8qXyPmZiCqY6MMD6fPYjoV2H8s=;
	h=To:Subject:From:Date:From;
	b=jYdUVrznif9fMOOnD9xzWLAWkZ98QWh1H3xo4lc72SIyqbPilr5cQq4H2j+mtcj9c
	 TwW17PHMSJqzS1kt/UDHMBRhPjOer0qZn7/ofAcQrOX6E3lnN/Yy7na2x52PQffWnC
	 vHjO3NTxBRAR83mGU/hmP4Xu4q9efnjvW0BbbsAT2ZXETJZrV0TygcxlIU6XzsrPFX
	 S7b/yxqc4YZG4IWKqs1qKfeEl3IYyvyPn9DBxLb5h7n9KNOV0Kud5Vj9HEtNV4Lmk9
	 lNKShcEkVEeZF+kSkEWlYSbR8Fim26gAwpgu9H5IagrkXRiSwPtzRAPoH7ZwXoqktx
	 YF+lJ2KlxS/yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD17D38FF3
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841143358.29974.638718986359622520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859763a6a401173e498367345eab25b3bb4bdda24aaec651dcb59d02cab6a443
Date: Wed, 14 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768411433
