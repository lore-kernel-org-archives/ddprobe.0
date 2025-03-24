Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2969C1401C
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742779194; cv=none; b=K8AJqIqLMHl0//AWkCzF7RzcoVM/zOrTm1OuNXeIrDsE1nYLk9En9FnqVJscxQbp2QdsY4ZPeuOWNq2O+xpRUcIu9F+sFlKU0Tup1yh4t8HtrDEl0HwWS2JRo364H2WT8bNkbwAn4qP/eiUmdjoS04zcDJIW8wwyL6fB9+w58BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742779194; c=relaxed/simple;
	bh=UwmyxXg6k0nlAvF4Ob4s5b6hsKurz/0MyX5J6IxncbU=;
	h=To:Subject:From:Message-Id:Date; b=Inc4IpcB4E0V4W9Nn60R9GfWemgHPq9WCWAC/yBVtld+a7YYlKg5bbIM/L5TjIuvtJc6uJLjjjLP0Zj92Cd0BR8766lrCFUir4EdlhksLfQVv82EWonLR3s5TmksQGPDB2E8v3HWf7u86oDJnxAEDXR6XfLaYE3zJPbxF5Dc2WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+aP2bTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+aP2bTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A937EC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742779193;
	bh=UwmyxXg6k0nlAvF4Ob4s5b6hsKurz/0MyX5J6IxncbU=;
	h=To:Subject:From:Date:From;
	b=M+aP2bTvX6iGpfrgV+2UyGfP0M8q8xC7yhil/rOAUJmJIGwDT25Hem0A5GiCNkcNr
	 Tign6cCX4F2BIC/ZWFqAZJaaPOk2IYbK/YcqhRFw4XIr1y9Dm/q4wdXyYMCIIRsalN
	 +fysYlXB0HFgAUq4lDa7f1dPLbKHxYIftxmKCgJ7u6v2j3SMvvrM8k+rcl2URo33qv
	 FcWjqrFpw+yYroivxprpXHuSp59q4yU7mB+9J4uoJ62pqq61OKC/0s0z9I8vlr/0j9
	 DIzP0SR2hS1lywNjn4Agoq9xofoAUBhj7DFs2k8auUFlQ6/L3V3oKnZ5638VGYoQ/C
	 JNTbtf2NoWjvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963A9C28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277919360.17164.8216611665397791997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3ff481f273da895ae5e9e5908481956a264ce60203464d77c248349e32d49a
Date: Mon, 24 Mar 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742779193
