Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2994C81
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716510203; cv=none; b=UYNZucBt/W8+RPAu3PdeNTYKRzBH00hQeQhVUmtFTLqsp30R2ahhC36zpa4K0iUnGcWqgsF+6I0Dvhl6dE0VWG7EqsLw/0HQYnsgYUj50km4hSYAD8iQihoT0mz64T3RRw3M7HTzXyDzOugIcvSQnVma3JHtgPnJmVessiKPCyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716510203; c=relaxed/simple;
	bh=Zonxw0IUm/u+uXZW98QFQNUnWqn4cQZa6/+IOGtorwQ=;
	h=To:Subject:From:Message-Id:Date; b=CvMi9IsfEoy2/7MTvRqnMGkKf/SJPzDqNc311FgYUTJ3Ubv1XTxXdBzK6eLkMi+SQaeungKI1ZXHgj/PtOSwnPnPv8WfCpIPB66lKUYGfD/5ZW4GDswEWqcxM9YaEiDt+18Kj/DGrJiV3lHSHrVJKgRSbyEuz6LK7avb4rUsmV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ztr3l0vh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ztr3l0vh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1D4C3277B
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716510202;
	bh=Zonxw0IUm/u+uXZW98QFQNUnWqn4cQZa6/+IOGtorwQ=;
	h=To:Subject:From:Date:From;
	b=Ztr3l0vhG1EMvcx0d51TmuE1xmXiOuA6qsJenIQHDAsf5fsOTaqV6y0yOW4vc0dYH
	 JPvQ/GLsoci5R8E6OS3t8kdd5clhmPAhqSO0Ovq5WLDIr9B/PUfSgYWGyh4BwfH49w
	 OWptDex+Nj8I6KnL8Rn0ukT/+7R6LMZPxEmoMCaSBEKDRdlxjuJU+Ytoqkfy6MEm27
	 PwzTaPbki/9fDWV69iejnYRSGU1PqTkk2SZQZf2jKyIvXlAwnup5sPDl1UZ6jF0vKH
	 gcTplTClluYB8/nz5Ow8o1Qwm/HnlsLaCdeyoK8wk4CGswRz3vBo87EEB9yP9+H4Ac
	 HzRJNLpi6sj2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95C8C25B75
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 00:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171651020281.31919.17337701156632663568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df3567daf01071123b103356e493c1717cf052f89060c944e605eb26e29da4a
Date: Fri, 24 May 2024 00:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716510202
