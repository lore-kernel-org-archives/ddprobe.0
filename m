Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214077EEE3
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714104743; cv=none; b=s+T+r6XvtgIA1uR/3xTjoL3CkCkxoIa8iaNLT2XViZwmFCck3jn9fQcNQFo2nDDeyqG7qivyNDLkBTS0tmrMmqHFLMfH7CRbwrFPTonDwbva3E8n2KfiTaqBhIaAYeij5lxgh4tANYrZ76uPsYNFOFi3iKUQHtu5xKIIYTCWgRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714104743; c=relaxed/simple;
	bh=53JZYxyrV6u7CfKIePbg7Euy2ukd5GjRgkziZ35fdCY=;
	h=To:Subject:From:Message-Id:Date; b=eIbOktNLoZ4vgL2+0MxaiqEyQSEIm5QI0CULNQ0/Vns6spnaFiMlAjKbdCiKv/PM5CoxQ9q6l8R3NHxfs9xNGXiDy3nyuIW/j1wQBCjpTzRbDID3bvm0vlvPTdYFAIXRAEIeP2muczclT8ZCrmR+Y1aTeCOsTbI1aJtUm60pgyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U95yvB1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U95yvB1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2131C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714104742;
	bh=53JZYxyrV6u7CfKIePbg7Euy2ukd5GjRgkziZ35fdCY=;
	h=To:Subject:From:Date:From;
	b=U95yvB1K1q0zFdsfBRWF2jRjBeJaOqNDtiokBBSBNziAB2LGwueTqOrMkyYze6ogR
	 zBeJyKSuO+1k4KCrkAPBbQPz2Kqiflml6kcqCi/bT568wocfrL9jivkDhm3QdFzGC1
	 YPpGgE0iI8CCc1DKpoiZTh4jY09/+7aaDrBhzfqXzx54RSkapL/OvDvA7euaAiHiwy
	 /alXqR8NI66eB1NvIz4qVnWOGLHZUCAmC7DMMCKU4D1MFOI0raHQ+3hl1ga7HXEmS4
	 Rc1FxuYcxj3GrKkxUk5l5bPl+WdyPi+9HAiLNkD1M1Ayp/Bf3L4TatFju4xU5GzCrF
	 5qp8Q0CIuEJAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBF0C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171410474276.15658.6905402566868064497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6069e540a963543367e5290b8128aa026dfa4428599f6035142fafdae35cf2a
Date: Fri, 26 Apr 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714104742
