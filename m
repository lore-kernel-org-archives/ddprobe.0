Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F142F83D4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756920594; cv=none; b=o0vrlAXADAdQ/DGpd7/TpeO207+/7qlMfCELRkq/ojIxEMYwy2znGlVC0nXoh+RIanB4W/fD+nCLfw22lzJOGHmhmSFLMTi9P4zwrSh47B3dr0xfNrEo/h7aa/Es0LE1rMC2I7MjyreTGtvVc1K34fYdFFXqshMW4a/azoPT31U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756920594; c=relaxed/simple;
	bh=ZSu1Y1Mx+WPe4z42CSqjHYv9bDHhR53VMB4SaM8cKbo=;
	h=To:Subject:From:Message-Id:Date; b=qvlWoH3H5sAObmT1wRdV9Eivm8zF7evdkYp+tXdAuC0TNi3kGHCZTg1xzMSm9Tlnl+dRhik2VKOvCg2ptxnu1au26vU9LtQRQmb2W9U5XeBqayfU4gWlPSiOku4vhJZCgMCCZQMCnvSZAmtKoxPYSOEMH1UYU0Q/IyGQi/K753E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZtlFKnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZtlFKnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA23C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756920593;
	bh=ZSu1Y1Mx+WPe4z42CSqjHYv9bDHhR53VMB4SaM8cKbo=;
	h=To:Subject:From:Date:From;
	b=ZZtlFKnBmORm8+yW05cBFQm5TZWLdziH2S4j9y2onBn4F4Zn4Km5OzL+1IOB7gN6j
	 7HjWxGfYj2K/wppN8kcGBZdvJvGwuOEP/VgoGhJ+9OdptHc/ptD+Cf0axlwBVxEW9s
	 duN7rtmR+vnLVhPjmHIeVXZ0XnPQ4N0JPqhcS++lkvwkSOBJeLnAQD/phNNQ7YBPrD
	 tJ+PnvWoN7ko6SJCsJV8Q2KbTbg5xGpozhF0TEFwiwTacLUHBQY09v7VW96GllRCoG
	 IG4uWwbYfuEd7/voozU60FTQL4Nn9p5igYNe/DYjeY1reO5ss0/nrYEjw9t0kinw5j
	 xoEO+KIKkIQQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9151ECA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692059358.14395.9866461000669578325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e55c1f8b78728326129fd146b8c99f7d671307335977babfc500fb817cbff35
Date: Wed, 03 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756920593
