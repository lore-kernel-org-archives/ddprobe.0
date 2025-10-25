Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01602DEA68
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761434394; cv=none; b=Q8n3RNxNps7RT+8GR9ZqM+bNaIjkgsPScopyZgkHY+a0bjWA8sqvZspB5FJLDo6jwIbDSdCKTHvkIgDAwnFPE3dMWcqkuoZewB2oLOLtWA3Rtp7Uf15E0eZIJ87NdAMxNVHGS5QQN3V6f+wyhmkaoW7K+hHMT18pkhxra0UNDKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761434394; c=relaxed/simple;
	bh=O/+t+2r27l+KydEEW1APdR/HHXO7GDfabVx9WISfiLs=;
	h=To:Subject:From:Message-Id:Date; b=VIS2zVj6YXwH495slR2yaPVJF0wDFnhWXNGnbFO0bhPRsqsilwChffakTe5TI31ztnGFJ+/lio0/Yt3+KtT5xwkeDFxPL3aDvNKa2LNa/ru5IkAyvCQ8bniRM2oKZC31D3wJVMQjLTv4Hk8MiGaSjLRrckrNyYmXHx7a2mrJW5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suQBKoB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suQBKoB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16A1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761434393;
	bh=O/+t+2r27l+KydEEW1APdR/HHXO7GDfabVx9WISfiLs=;
	h=To:Subject:From:Date:From;
	b=suQBKoB/AgYdjbhPe3YnrSTpCQMTquJUQ7jCY2WTC/cupIBANcG9O86vM0PIPDd9x
	 aE+m3YPFQu0mO+2EjwrWU3nL2/FpCvKv+JjhpLeEZrLCMRBoH4jcYNI88/YblCbHOC
	 92CB8vzkdqLktO5KkYi5bFR/J0YSGeO2rNjCyiQ/ujHblKohzTSYMqRLOu6tNkp8la
	 z+xHsK0mn+fuuICUDiCLMe0YRS5rdRrChDaa+G7PfbfRNG0BUoKpoksC9C22E7yP5m
	 hK1bXUnXRGMZ4JjrtLNVHEIz3vCvbVqQF22kuTkVo+JI9o0DrMXC5WYiaXC8ALnEqJ
	 UDAmWs2YwJXpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999D2CCF9E5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143439359.17121.5749551007010111548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7459ff83d7e3996208aa2530e362cc3df619dd876f001836f4d1f7142ddb227
Date: Sat, 25 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761434393
