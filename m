Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427F218870C
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741710534; cv=none; b=U6+7v+2KsBKUaJObFMVkQOl8E9DUKbeT9/0LINJEsRUEcUXGRkSz+B2/ZCVfJ0b5zB9y8mpt9nZZdiDdYgImXFPQaxleP+XoBRVcquCbGdjI4kQXEFvDIqAvUcG3/9/Gb8EoLEAMAJJz9+/YLtw1WDD8wL9wEsmS7UJOW9mNC7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741710534; c=relaxed/simple;
	bh=v7zhQe3UE0APa8cQc1sASEiGeuFQjXbQtHsKDiws/iw=;
	h=To:Subject:From:Message-Id:Date; b=keaXGxvFXVxXxEtP+zyAkKgBg5HB9rvEW04SrGxdP8t0w/BWQyWfVS98G2pNm5fnGj+3JVW44nSGfv73Xd5KMJFoMplUe+XWnehNVyAqS4Tihget77qZ/KCwdPzvIs8kwLAmKzBljE+yj3mp5tP5O+dkrvazp4Ki5yo3MD1KWTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLSD2hZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLSD2hZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF51C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741710533;
	bh=v7zhQe3UE0APa8cQc1sASEiGeuFQjXbQtHsKDiws/iw=;
	h=To:Subject:From:Date:From;
	b=XLSD2hZPScB8/+ctCKuGxAA7rbHS8VIb5RtqJ2VxiSbvHYSIPB3QEh2DZnq//Qnsb
	 r59xDqyHchOGJBMsdMnoIhIiIAs7+XrXCSV2oR0fZ5UMy35NQ+b3UaQ4WZE5A+EMpW
	 J15yqFT4RPRtkBHCvirdsA5ESysHvMNOWCYV6Zx3PHwrevvvUaM6lV8yyXvQdJuSYp
	 7U7frBr9R4lLDUTPVazRXjAMeVkJS8Uf2HjFCm8l6u/M9yJzAifdFGXJsIpLs9bpzo
	 miXOAbnkWOFVfZacIq8btZLKUbP9+xAY21T1Rl4bIfJY9ug7UFc9V7nxm3XRhvoPx4
	 YgNwYubObIMxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9453DC28B2F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 16:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174171053358.713.16675598760108582752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7b3dcead4465b2a407e6e9860caaeeeb5c9fde0eaef7027651d67c0c8a85b3
Date: Tue, 11 Mar 2025 16:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741710533
