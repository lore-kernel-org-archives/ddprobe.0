Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513C33148C2
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784210914; cv=none; b=RZqAoyudvW0oe1j2OvrzthKmc7d/UXGZAhaDv8nPh+sEwaAhtbz4647Id4MMgy+0YmgXmgPo03AXVBl1oUX8BnT6mzGyfmFjbX5vLQIy+3IgV1do0dLTgHaqLRxSQp0ugJlP9BhcQfvw00XFxF1luKv/wQnRWvqzBYHMd4+ztYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784210914; c=relaxed/simple;
	bh=QBK3g5PHZwDXpu1B/SLRFYYG9q40EW4AQaJBZxqVzA8=;
	h=To:Subject:From:Message-Id:Date; b=hpnKUptKinBDDUUheNNfD4vkFVWyzLEVB8B0GEqfEDUz5E4B1kPzF6J9zGjgC4CkM6gNIb8feRlelCxtdWnC7WXsi4etlMnbGvY/hjvEJUHbsYP6gPDS5dPDLcoCZ3ulDSj7qJO9U5soGjqc3bTyT9YVJ+zjXCOlmrB6t3hIFSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUNvPFyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUNvPFyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0166C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784210913;
	bh=QBK3g5PHZwDXpu1B/SLRFYYG9q40EW4AQaJBZxqVzA8=;
	h=To:Subject:From:Date:From;
	b=uUNvPFyBRUubm5wCNZVUe6z86pUfPKyvGYLKQ9isVGO8tInpPApLVCIYFltgIdRRx
	 GAhCFlVP8vYTzLS+y7c7nbhWiPi71x7kXTBcmLqFWTuW+kJ6TtLFV/Dx38FvAF/6kd
	 VvwqrghPis+WaMdD3iN1bKl6LR4F8N59k9otUpLjA8AqmsnrWQqwNSK8DpZYoLofD0
	 aFPbBouF8TNrOJJ0TO9jv3Qglm2nCuZ14KM/zheXCczSN2D4r+0G7mPZeYVzWQoonx
	 l0zWZYyTVLWd6RSXfxZ638Fb0f78rn7/UQ9kp/2WGRKs/2dx+8GTEApEf2dZb8xazN
	 6NwMzW4cXkqgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FC5C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421091374.10947.9862114574969976578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4656550750072e3e3bf8190162380da696338cc33893b8f472f4486724ac001
Date: Thu, 16 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784210913
