Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBF3223311
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755527994; cv=none; b=Y3eIN5T6IiXJTTaO/okeSBr4Mp72VWJRYREAW4HaVeMXvC4fW+W5oPr2Pjr5MbaPp92mZXg/HZekDwH8E4CXRmCW0mgsDk7PxkHF/KyKpCt7NiM1Yz+IPOEnOgIke0fAFfwI1H87TR3xMp3OKRo/382CWKR/2vokWm3AE0bA7RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755527994; c=relaxed/simple;
	bh=YhGBQ1zDBi8QrnKKIsbwiXC/pluT9/j94TBAV6hZhF4=;
	h=To:Subject:From:Message-Id:Date; b=nvNliIjM3eiXdHSA4MC1hziesKi4mkIP9u0DylWeTMsHpB1B0D4pikNl52fGCYcel9zeVJKnYLQi/j6kUab9L1sy9OOzLbNaWvDgvTLAWQENe1c/LPSoXTbBOpUUAsKP4KW0O+VkHv7AEjN/P5dqAfPrV0F6rOCasweFQSpiLhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPmjcWPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPmjcWPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F70DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755527993;
	bh=YhGBQ1zDBi8QrnKKIsbwiXC/pluT9/j94TBAV6hZhF4=;
	h=To:Subject:From:Date:From;
	b=HPmjcWPTBF6dOjYmphnkqmCc/niGuDKcSummpd1GkpZuQ8/tJzVt2DaAs5+1l1/9h
	 wpZ64rSYxoiwip8KO+6hbFdNNCMr7eRaxJD4k6T5oq707yhQjzbanCM4JuNuvOdO+9
	 sMLfN04GK+jz/qtQu/dxw49AudrpVwj4c2nYnDAUlIdmFpTzPkf1fQEhzRCyhkBHmm
	 jm8YW8IsO+1Y1zkNKd0x64jScHmhWt9YVczaHG3TNC/Q9a5E1u9yHS5QmoyxOnSQjV
	 8jVWUc8K+JX7GswN4Zh+FqFgJS516C/GgfjlJTHB5BB2+esYqAChbJCPvFx9Rh9jcQ
	 mEM0TtEqP5beA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F962CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552799358.24515.11467842077448545206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ad7df2a7b70a1c85667bc0a96e037ec63b55d5ab070ff4b8591302d1aa2348
Date: Mon, 18 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755527993
