Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5719313213E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720828763; cv=none; b=uZs2liyalixRaeuYiEzZn8n8iwtmjxLJ4825L8omwRgE5GscauKgnLxDHdnRgRjzx8USw+Ki95mzVuNoLBgW8NlDIfFq51aWVxd9cDikC4OCwFLikPVtRS7X443jHgNxeKiLgsDgEmmpYpfOr6McdZOcw3h2YmTTiZ/oInOd6os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720828763; c=relaxed/simple;
	bh=Riu8FP0vVedebLi4LJIH4Zk1GS0+VMxHxcVdQPl06rQ=;
	h=To:Subject:From:Message-Id:Date; b=u7nmUgqFpCBJhy6y+RBxY7OxJYqVcIurFL/4H3HjMp4g8J0gCaK0Tu6wEXeq3rz8tH69t7gyoYkkwCl0Mqf3hwut7a7YiwXQkPA2cal3SvLAq0XqA2ngy7lOO9opXbhWzjBi2IRwiTVqHrpacrdtD0RCFnGFaFHQEyQYKkG1Dro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0MvnQbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0MvnQbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1E1C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720828762;
	bh=Riu8FP0vVedebLi4LJIH4Zk1GS0+VMxHxcVdQPl06rQ=;
	h=To:Subject:From:Date:From;
	b=l0MvnQbY3LXLyNoYHNlbHOMA5dn47OTGVWInnPgp94dUAVGuDqFyALTkjsN8yq9oj
	 g5SXjYK0l78qbMqkqNQOBgarmFiqzGbVKNITn0NQnBEMmydJvl8Q2BnTpEgTgcC04D
	 WlWvTp6ncfOkz4o9PzgJw509Ju4NTh9mOyzXKaTt7O3KY5kcAFum2e3rX8ecL/QTSJ
	 1W5PUTGO0dgVEJywrXQ2WpHuSNDXdOXvwpxM3eyIaE0n8BL4z5cj4lFo7Pf3XB5VAA
	 RVq8Do6XS7T8CshmrWYrXzm8KT7X7lrzxY/kRqA/zmHjSbe2J9tIfzWW+2OfAcw6CM
	 NXmfRdkH4G3BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F16C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082876279.30411.5342379395613482916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9f02c414c71d63e8685acd4d0f4ce31bf768e44da526c98239f5421c34bf69
Date: Fri, 12 Jul 2024 23:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720828762
