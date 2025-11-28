Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B97A134CF
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764306174; cv=none; b=VzXRnJC5LyXJnXJnm+Mpmg0bwSFgznarcI0u/G99KoyAvWBMUEWJ1vbmrFRYrgfQ6RvWYI8fRdfAqBFA7jjJWZL37O+DA0vJTfM8zJkZZcN1tK7vQ6N0iMIGJaJIXHQvetengMHgz8LFicgFDzZUSQlozmZBkbYf66HaaVwxYz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764306174; c=relaxed/simple;
	bh=p8r9f+YapfvgGl97QYLt8j/YpCDgkr4eKo/+kIy2m0A=;
	h=To:Subject:From:Message-Id:Date; b=gyBxJU6s8R7Z5peBSdYLKr8Nbgwiyg/DreNS71xjcBKwQvoyPT2NObXh8Wv7Ihw5jWK47U+gBSP4V1269lrakguSDFvmLEwoY4fq+MrNE1YhLOsKq/pULiD4mOIA68Kx5U0pq4zzDNDDgRHqS3rT7pkotfOfNU8PIuYYgWCAPXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmjcFxhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmjcFxhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CF6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764306173;
	bh=p8r9f+YapfvgGl97QYLt8j/YpCDgkr4eKo/+kIy2m0A=;
	h=To:Subject:From:Date:From;
	b=EmjcFxhMhmM4xAD3X6IILgHe2uMAA3LWy79enVd2Sr38hSyxpxCzUFtECwzVdlRw1
	 uAbrneyrGpZROrRtNWpi5R80gDnhAdJBTCfZE5YQ9kFKapafNMRsEVt3y21kNFVORY
	 ysDR5cDz8EscWD8YMwpZR0VHntvKhSnmNR8BLUdj/plh2rKJtUGRDVwSpYL9QQ/ymf
	 KWTAtJhNzuIhRSXReOE4GVCBs4bx0BMy+sdHLPLpqDZYUislqNX/5HUA/eKOamKe4i
	 cIEyUlEX8bFQult+rWuoRv2TWE88aoLomMoLxFpuDWrJvXE7RB73lb1SGqZK/qLgRv
	 0qogaCRMxF4Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9666BD116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430617358.28586.3411631945410152062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde7118d8a2259aa4091437747e4ed1246e03c93582ea39131d42d1194652992
Date: Fri, 28 Nov 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764306173
