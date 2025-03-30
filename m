Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3859117CA1B
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743377394; cv=none; b=Engi7wqCLVwRgvwhW5d7r2NdAEtHwCxtphLIrQ5PI1rfDc8Lciqee1QmUQqxZc8Bnp8QCO973oo+wAKveEpqJ8fHCLOqx0JfcbTa2H78YsQ/9vBUaCpoaNqfVhs6pwxZIa36O9zg1YZg8ecmqA94MWx0znHmuYsUpkL23rWXuyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743377394; c=relaxed/simple;
	bh=kbOM/hcFOwWSEnQwCY+L+WoRWx4fBmydNJh/bK9deyc=;
	h=To:Subject:From:Message-Id:Date; b=eVBUjYdtqemUEc6F7Mb1hDzf0nPJwxJheAFP/ejwXDCElanzYoduDCR4/HLMa50bMW7UzG5YQDIsz90WnjgC2SfKqKCVMxTo9PNnOOO/oh+E7X1Bz7dddAqbIRw/rPBFhbfJ3lSiUKPC9b97jHSk/P7272pL/mKVXC9Lyy+QAcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTzN/BFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTzN/BFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4EF9C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743377393;
	bh=kbOM/hcFOwWSEnQwCY+L+WoRWx4fBmydNJh/bK9deyc=;
	h=To:Subject:From:Date:From;
	b=YTzN/BFpfw60FvfVKy/Kjp0kbSWu5tEUKcC4NXVavTsSetFvkRUStWeJoXgSBpGy8
	 ww1sZZmI2LV2k/jwSxkPPTjxFSlJ1T2uGPt5cOjP6cWfJ+TkmgLtlhAFA6V4qVu1ms
	 aCwkDqmNvVp3wxEahLPUYvwRrmeMGrptPNYIz2xn9v5ch2sdTsiTHwvDSF9mBn2J7n
	 zxxiNtAQTwotd6OdWkNe2MKLQJjzFGCGvRdg/alTxuStXj1ChF/uTEh0aWJqz+RamI
	 oExdRIdJr1+xt5yNOqshxU8jH361eyCYcZezTP/QJmmvvF82oL4d5eQ/XXJqB04cIn
	 K8q6mpXjxrWMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF85C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337739362.1477.3090847707481122106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef259476148bf8cfb56b0af8834b427915c53445fc4e78a0602db0d9bc10af41
Date: Sun, 30 Mar 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743377393
