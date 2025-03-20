Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D14021CFEC
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742462995; cv=none; b=ak1dgSb89kaGAscJHqPKN/pV7o+oXYq2EWdXgTxIPa7bGo7UplHy2FxenBL14NE/QHGeEmXmNxJ/nfKNZ9UGjynIjq/jJpANHPVzQMg6CvffzXKRis3D8WSzwxQJAkQgUggwZ/rKgItTlI0avbw1TOqgRI7vuOGpTm4Kr/4Z0Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742462995; c=relaxed/simple;
	bh=vb7bWIii+jg013Z/YJpo6PYBl/gVy6j/rt7yjLE0hZQ=;
	h=To:Subject:From:Message-Id:Date; b=FoKcw1Hy6LHVRpcPC7faKm7210+Sxwop8wBKXA5oP/61bl6ekxMEbgHuo91OP+D2xAwaZaFopIpwEk1nU3XlTJbABNltNwGhSy6dMTDA9pzCw0lPIRrPIU6cQp13TI5+n0ADrxB0TX1nIHc+Ye3A0ae/wvdPRhT+9GWyokDUiOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KV7Otjtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KV7Otjtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CE3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742462993;
	bh=vb7bWIii+jg013Z/YJpo6PYBl/gVy6j/rt7yjLE0hZQ=;
	h=To:Subject:From:Date:From;
	b=KV7Otjtpr/YDc4JPSHi9dV4bJMY6HNr/GjwQxPjJyR0Ku/Wg0Wa6lKZ2EZNw2+7YW
	 qMziu3jtEVOmYoWKdyOtZlUNnQDVd24NlgK/tT9AYnV2Dq6HNWckO8X6G97zubHuZm
	 Fqx0osYjtB1+zVqwQrfgg4CwOXrV5am1nh4f+HIZceGGeJCeY+X0TSqI88nMtjskei
	 iwo1DFEDEgBx0x1p+b6jI0ahw39nEZasU5CI30CQt5j7H4ZSiM6VfQ2hbXLR5ePKGk
	 rBvA1JD0mEki641zgbh7tRPauNdT35tYLxo0fhiyQDgVOiZwqR0PLsJXqSE/nNTtYw
	 ok1hzpcVjlR6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC50C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174246299363.5203.2786874091378211522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527a7f8204ca87398ce58413e1050528147e526187c225f62c9f33bc98692770
Date: Thu, 20 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742462993
