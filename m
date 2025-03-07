Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51078143748
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741312134; cv=none; b=sf2Sfs6Fn5OCDiDU+EOgggqoumElG7qNqotAFGdfLMRnMkoLlrfRl0vEVjeEZOPffr5y5NhIL0q4CcZHQ8T9+jAQH4NgPti6NnIaGKOh3mldGqDQHHqb7VeFEM8knPDvSAMil3U8uniQfDjim1DifJeZXTxg2ihP5AsmMnHBQ3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741312134; c=relaxed/simple;
	bh=YgroI02WQ8Uo/dDzdoVnY23pybxt8OAWXvdaANrEXY0=;
	h=To:Subject:From:Message-Id:Date; b=t5wXooS3tm0AevHWddZhQn1QcjCYGiM7wnEVUz8+dZZOfWq/9qnh7kiEcYlvKd1NeUzy1iTaQK+Q8F/BtsQPqPvlpyAvF4JgD4oZj1JI5bhFgj+cTS9l3Y2lu3PExCECzvMSwzhCDVXHx93CzCVGwt+ZRoWJbE0cGEiQLXrSe8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHdU77o9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHdU77o9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF769C4CEE0
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741312133;
	bh=YgroI02WQ8Uo/dDzdoVnY23pybxt8OAWXvdaANrEXY0=;
	h=To:Subject:From:Date:From;
	b=nHdU77o9TafoqkttFFdu9f3Qp6P8teeAhge+MssEkyhg9h1fw2tchMhEr3OwHcfJF
	 +8LpT1xLuATRe2DWIyxkbC0IW3xPxbbUTYjtfC0SJIPxuEUGtYUxmke6ByrkNLH1fY
	 mTwvhlXXduY7gXCq1QDL7nWKNnNeNW51xhSo2N3e+fvCIsDo0sG48SXXnOkbH+EAbv
	 5WUj5L+IhtoAlRtFHGLjLPJJOojYI1kHyIBusZ3r/M7DpgWPU51YlNSE5RCZuT6oOq
	 lqaiW/w1SA8zvIVjwGvDyAIcIZOLUYn4K+lJr1NJaLnnwfV/LMK8Fw63vQdGuKtnnm
	 mrPOjnzB/DlwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B7C282D1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 01:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174131213357.21050.7163308886232992425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909a0d99e0b554a450224b170c432bd79eaf2a9a46ac54214bd747e4a76a2e03
Date: Fri, 07 Mar 2025 01:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741312133
