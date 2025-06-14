Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC9B1FC8
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749911993; cv=none; b=X67pvQsQbz6s4nTiUBajYo1yHNvnK4VVxezfTvp17RsXUJy6IONFy+eaY0SAL9VAPwsVqtXuZIebZAmKnrHob07Gniopt/JiAndd8ollOyKlRUDaILBR90FsVCjkWO7kAoZxmMYyiEIvA4/oFCuL5Z453LM1G2jFnGUxdUx9F2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749911993; c=relaxed/simple;
	bh=PJWJBiez4qvYkpf0LBFlayUdLmMNHQlyPQscR0QO+ZA=;
	h=To:Subject:From:Message-Id:Date; b=e//Phk+vAImoBXEtTLQKpuBn9+Lo0RBYve72AsQXI1zj2GQ/ufVqcmwjrWW5YBGpKzYEiAkDINhP0UxERikpfG6vCI8iEiaNTWc1csXuNDxq+IqXMDsr9qfpasoq7Q4UltbLlljwPYyqVpFs9env4hs5XJVjUN+Z00NkAEuxCpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=is2JSqyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="is2JSqyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B3BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749911993;
	bh=PJWJBiez4qvYkpf0LBFlayUdLmMNHQlyPQscR0QO+ZA=;
	h=To:Subject:From:Date:From;
	b=is2JSqyOA5IoTuqztZv7K4VQIAWV/W4pW7NektcVJ6e4DNxAyzmYi50uRlovvcT3J
	 cFksAWAYJ76pumD02Od6znkyK7gmz+KNTHAHe0sOdNdRtSDTNsDdfQPVUeFzs3ngj8
	 iGREkZuHE+KCrN+HKOAeZ7A+tArfs9bkJ+c7rBc/8awH4a8IQJYyeMdyNrPUplByJB
	 PWZvWXFsGuUNsjto/Gz5LDZe9RiP4xcITeLAc08ibK941NXODk9PqUgLpjAIDMYMUC
	 gKipvvGMBXq+/N72tTHLHg+dMyRTuRfBjsSy7UecvUbs9JpEhIH55y2cY1C/Ex72dF
	 /aOw9+zutTqOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9715FC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991199358.7429.4234629386949693114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ba56de6779ac42ab0a553b8ebae401a013d790e29f4144188606ae72358333
Date: Sat, 14 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749911993
