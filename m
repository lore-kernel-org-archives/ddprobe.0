Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3202DC765
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757833794; cv=none; b=V0F1US8UA35e4gK8DC4+EzqqsDTNoamfskHM/d/81Vb+I9SUQpjLD2GmeI0HG7F2dUDbpsLvCgTcjGtqyxF8rLeLYWkEAML7HdyZe0nC7m5HdQXXhybE0jV1iWyvmz/pZ3m0z51gtRN3NEJrQWXmfgKIH7cOuNX7t/3uUo4wObA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757833794; c=relaxed/simple;
	bh=gj3nAN9gupopksXeTN5zoaKuA6R5WVQ6oUyw0OZeFG4=;
	h=To:Subject:From:Message-Id:Date; b=WpcCGXKHwYn9OFVQ9RZDkWIBjV3iZTY6nj1gfzjFmjXt2+h2e8Q2fwfX3PAADbfIwKmZN3daRLkWVYUKVAlEZScpUXysnAYUrQCoVr816ahkG3Umqh2PfzLaWbzjp/T48ZwrOwNt+0OuhGNkFb3v5Qu/uiCA6+K+YTa+t//SllU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VU699UeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VU699UeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E34C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757833793;
	bh=gj3nAN9gupopksXeTN5zoaKuA6R5WVQ6oUyw0OZeFG4=;
	h=To:Subject:From:Date:From;
	b=VU699UeRLGpoITcJWkdb33v2tZ7BVDL2E4dJ3uoWka4cLCnQHOfMdMXh7ZIla8S3R
	 ey3B84wRaWLdNM1+K1BPt+1AjizXZNZq80l3TjrTNHoZKvzu/zIVdxf8O6c1peMOhc
	 P7st1N2o0F9C1O2wTSYinvdRAXlX2lFzsX0IDVZnyCfb2C0hXZA242tqxH5eL+he5q
	 yPsGT7BqI9wroGDHZJ2WBa7PNr1+WQ+GZNDOW46O6pgvyRc8z4dEHf1rLQhdQ1TPoi
	 jb+/WOzqnSNAHdnulWXBmxHJZbcvMmak/KSsszao/fL1qSD8YDTX8Zs0u9JK8Ys8w/
	 gwuc36B5AbiKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A98CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175783379358.20693.15338186987173636070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfce57d9e585d92e9b5b5cf2cd278311e3b1ed1baf446c23e23e85112184f154
Date: Sun, 14 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757833793
