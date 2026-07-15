Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F18D211A14
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784098114; cv=none; b=CCJsnaVWyTJbiH0BrpQRxWn/HsMry0aCu4eOc4RMdAt+nwCOk+tjRU3ZYnxn9PdYw6L6C+0v5p37+6t+wrcDgI6nrz/4Wus/4vL/QzDGaInNlHFXEHzCg0oiF73E9QMKWxXnxpcsJHHI8FF+Bq0zC317FTVeqmXO+2US1N+9uB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784098114; c=relaxed/simple;
	bh=iuckUzilyh5rxybMJL30/zgdqYl6gboVFN3cZrSPVzE=;
	h=To:Subject:From:Message-Id:Date; b=mpZUezT5cF1J8AM7gT/Mexs5IaJW3NNSFeGqmSjmKcezywtTwXT/VJBLQvN8ll56b1Y+HM/ETQOGajPD01pBH4bk4Sn2O2/1c607BNtSdBHWdGLnxMIEv2vHG7M+tXrOFicfdPnlR4uKNIWTthCIZY6apDP6lf/QcUg2P+ttFMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjrUB01g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjrUB01g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C3CC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784098113;
	bh=iuckUzilyh5rxybMJL30/zgdqYl6gboVFN3cZrSPVzE=;
	h=To:Subject:From:Date:From;
	b=ZjrUB01gbqMRWbgUq3xBAa9yOEY4qtvVdj6PxPOF6gBqeyBw5b5dsjlcNK/ZktbNW
	 osFQuhWwhxmR9clm+zCci2bOmZ8eOW7vS7orPvr5vP8cc4cveZbWKsyB9ZvNjtUI3n
	 au3zeMzn1XKZWs6r2h6XAJsuTxZtbRSdvn/cccWJsfYEu3v8hWK6iYsP/9cDTa9k2Z
	 IaC6EUgEhko70HYJkB8T7WBQBBHpD5l+A/1s1iT/ICsUU+9R4GNKiXgYJJ0HusLGr1
	 WaOaq8StLQXSKW+3bzxQ/MEfJyDASqvbL2T9J2EYy9bxisE2E/3BwUjBE0bMkFoLuN
	 RUI1JLah5nYVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0C4C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409811370.7264.8125505265203237503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d987a53a7eb8520c5670eb7271aee218eb0123ba66f8bb415640a86edc36da5
Date: Wed, 15 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784098113
