Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2428220EB
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749685794; cv=none; b=f/hBDmUr8uMx69Vh3BbPGtfLBPVXeTCUs8ClpaKFYI5Wy4mUuCIk3j+6wKbwoL5cZhDqBeyU3XRF3VGrlx5kSUToqzm6lTtDymqLAlAVHN0T9KxEBv8oVtfUAb9qopAo8i7O09cjoPfJUlNYh0GQv2LEoM3X4WTvxQPkypVUjok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749685794; c=relaxed/simple;
	bh=+GzPbP8rRCaO+pnAE9esMJwfOveSLLpZUoDUgEy9AG8=;
	h=To:Subject:From:Message-Id:Date; b=LP7Bv8GUWjyhW2peaU4iE7YGTii1jxJjf22HLkf+TApPQuIj6wBqHRSwKPlIa/COU4SbB54e0VmgtNkVzr7qoQ0fa30zwmFLB+fXZikq5Nt2UHXFi/2xGb2xtBFR3FcazBFJFK0sgQ5xX/IRJ5Im5sF14iMWFU7KipHy5wYGEBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4vJ+tXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4vJ+tXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F1CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749685793;
	bh=+GzPbP8rRCaO+pnAE9esMJwfOveSLLpZUoDUgEy9AG8=;
	h=To:Subject:From:Date:From;
	b=N4vJ+tXKrBY/Eu7ambGGPkvatlZUk/SFO/TZnkS31mRbtuRGqdu/SlsdHYNNzbHz9
	 8w3rXsQqcPIX78wTO5Bm8OLVXQ/8kHzxhqxSUYAkew5Sr8BrxhfbCwa9YEe4ycr/JM
	 a81PLTyghMdc51mfAwHTAqrUKFIxr5vnJr5m1BLxcNpAx+SXtDMxWNqPm0+/78qgLv
	 KSyMVDoylcWu+nJ7rnPLO3Z6nGXGeIFSQLFE/DyfrwX6NYwAExScqNWDYkvWEcSitf
	 R8wn9s0AgyC/Yv9yFu/7PyRpgM04p+49mHruGliyyaFv+GXTJPFUoCLKTqnivgQnS1
	 EMBYYN1/LpPAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905CAC71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968579358.22906.9995424269983123838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6630eafd493b3ade59dfd634c270e05742681b06a9cad5c7cb9b81a5365e242
Date: Wed, 11 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749685793
