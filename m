Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FF7367F33
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773189894; cv=none; b=rzixpvuBouaezcqD9dMprN4GxPglXoqOble0NK2EvURHMCyGmEosZtrJSGAF+3avoDJphNO31z22x2PR/hC/ZSeC2C0UWoatP8ONw21jhBcRUz0r1q1q2x+TlH7Fhz3R/ARVmMeC9ZYSq2OLppRUpl+BJV2qhJzf6/HuXhH0EtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773189894; c=relaxed/simple;
	bh=/DaS4u8nzep+22duHDopB+4R/Mzx7UhB3kMUf9gibGo=;
	h=To:Subject:From:Message-Id:Date; b=A/HW096Vb2CdfBPPX5cmDWxe1vVvxYxqQkWt6NjcklK/IuoLovzRHRGbmVKS1IscEYREFAWUwZeQNYlGLM/1iBbzGo604drb3xhKSZC6fiSGKxsr0rY8N7d+4g5iqeHUuoHiIu7CKxM0OOk+mVdNjCRc0PZ9XMFuv+ArU7kGlmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+o99tXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+o99tXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D86C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773189893;
	bh=/DaS4u8nzep+22duHDopB+4R/Mzx7UhB3kMUf9gibGo=;
	h=To:Subject:From:Date:From;
	b=W+o99tXBQMaDLq8bK8BUeu6EjQgI3cM7aA1aevdeCZhIu4ipbQHXBtfb4RqtZueu3
	 lUeMBat7pvATbqHy3tEwO4+mZamz21ersBH4OdtWMQvdf4f7xCO7WFzBVBmFqnxiDB
	 mGbUzIPZmMNB38/dDyJ7mxJqHEmY4ITTpbHHm6nDljSjhnUvZKdx7wsULytpEWxPaN
	 z85jDvv8FHEbzt9Zi4hdIIlNdaU0dW3HNZDmRdb/xyn1W9873iq8RoNcA3Dor4+Abl
	 RLQlwF5GJ719/jR+3ztf5YX8q1UZtCf4yNzJkuJdG+IYGNNxYqoolf1cZDf+xqxfR2
	 BAAPVs9+gkpsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FDEFD88D4
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318989358.14821.1650026235121308748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91074451e96e0f7f13ad63af0c4a71f076d1a4e5b5eb5ae13fbbd100050b763f
Date: Wed, 11 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773189893
