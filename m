Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560762F50
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737227154; cv=none; b=RvS8S9aG5UcllR4A0qIBVlCpBXccNYwt/DUGsyICBMRNvRXiQd/WjUMNru78+1ja0S3qZxJ/C4yWUSoBCfJZUP8v6gLEZ295XMfEGG4T3PAw38a8RrOpNv5t/Dvh3TT+KCzpBohFIqvaTmZvLb3VVbWl4bt9rl6OqXEgNkAMVGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737227154; c=relaxed/simple;
	bh=/eM/jkSGDOUBy7ou0z0tzuh+8C04Q1lQvGMCeA05VHU=;
	h=To:Subject:From:Message-Id:Date; b=Fd3NcNzEOxECPmZDGcY+3WCY+Jb63rSm+s2jLQEQBb4E6d9kUQ784QIGboqjhzCq20FjoVsqBG2YeYSh6btlR9+S5PyAFerSm2aU8UT4YVm68rXVsAapl9fXaeqMo2zPWlG69LQLiJBitKo8CdzH0zhjg5nuvtBvSEeA5+gpQ0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aP4+FDp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aP4+FDp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74ECC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737227153;
	bh=/eM/jkSGDOUBy7ou0z0tzuh+8C04Q1lQvGMCeA05VHU=;
	h=To:Subject:From:Date:From;
	b=aP4+FDp/DmKcgO3hV/6o/X9sVegWoIgDIh8Jv1RaxdkKM8+Y1vtYKWf6k/Os5yjam
	 tRKtlJaPQD+3wfsN6i+QwHADSLZk5tE/JavG79VP70GHf0qgZI5OelmWAUqwQeVFKo
	 nfIONAspSGM//S0J9FgvwOnrz80DPpUKsujUzSS1aicGF73yIxIxSUiORu5D8y6hoU
	 hZSvX9Tg470Vc43usE/n8Y57a9Su6FKFjkoRi631gJoaboVD6rdGjvlxJHXb1el1/e
	 0yOINVWKaIeGH6BdbHWi5eSO1kw/9vHpzaEpOnrdJXnn1N1AZ4jdIgdrCtrjt2+8zZ
	 C9K0qDeqEFw5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB1BC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722715360.2503.2638266922079161208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4901e104daa9a8176266cb64b19d479951bb4a49e99909071901c166456093b
Date: Sat, 18 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737227153
