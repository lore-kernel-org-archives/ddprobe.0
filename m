Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EC413AA3C
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711742297; cv=none; b=aq2bG3QkAEjOLVKXmbPxm8Gb5CrAKtZkJXPeDRuirUvjx5vSYQhucT8E/xa7kqoGEf//AZh9BQNOVk7i/cduFqNn/3hMfy4rKFm5Tb2d9ZAYpoD50AiHwQmOx9qm7T8pNMDiluKJ+6xH3SWMifiv/xhHprO5Tfnn0Q7i6WuypXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711742297; c=relaxed/simple;
	bh=uuFSYjJrWeQk+ohdOj5aU9ha+4DuQDs9Kth+H2vV3PU=;
	h=To:Subject:From:Message-Id:Date; b=aqyCTMsjDx94VIwp3nVeT7nhZTN1K8tbhAbNhfHEdRmaOEoeBSFZJviNanbjypOGc+GB/Fl5xAC6Dk4terdYSv9ThjGkl6+JogAu1fxLYwap9PpKdeSJtOgfmEI6o/Ajcmv6m+GdsXHM5omsNFvu16072267vYBb1z6k73YmJxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjiZDKac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjiZDKac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72D6FC433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711742296;
	bh=uuFSYjJrWeQk+ohdOj5aU9ha+4DuQDs9Kth+H2vV3PU=;
	h=To:Subject:From:Date:From;
	b=hjiZDKachJ16484M7RFQ3Rcdxda+jS4xfB+n07a1Jh5Ts/5jf2WhKBEv0xAyM/jJd
	 bu38yJGNEUrTIZTVpLaDudWZD+CweUShSt3+fgKxqSiWVRuEy8P5tmKx3y4bFhLgiv
	 vV1Ng8GFR0AU3ucNqv355wXZgQKx9a62HpjOVC846LpYJLg1Nnsx3fT6UgZsk2MoHO
	 sHjq8miIvkHpZV2cqKa7YHi39+lQGNvozDksIj7f2exRu+8Q9ndhryefUAylqpRiLX
	 ht/RaEO4TmaEJijBhPvLjbJhSm4kRx5bOUr8XA6R6rH0kE3jAAiP/qsMLi7d5vsLBg
	 +29GfN/bwb1Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BB6CD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171174229639.24311.11989750291250676215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe682df7c1d599c5e5dcfcb305d7fc4f49fb6eb0d1fc01ce3b6326c8bd54811
Date: Fri, 29 Mar 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711742296
