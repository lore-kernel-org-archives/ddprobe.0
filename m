Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691EF320F
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744118394; cv=none; b=aKr4ljw3XrNhFmtyO+ECFsgsfca46k36sV9pxduxhVIv2vBjCjOUyquTwUY+QOW+ZSlmR8XZVBx/LTv8OG216gfwbpQSKvcMaqgjHJopBxFoq2GDqgoYuZWyApfw/ZrgHNGX68gjaGGWWGdqOFqXNXdcNS1IMFZ7Iq9eG2sVtuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744118394; c=relaxed/simple;
	bh=YydpQkQSCt1rayhsR2KwAXrrMRLTGTtCJXg6ufzs4Yc=;
	h=To:Subject:From:Message-Id:Date; b=CMwIR2iRyiYfcWQ+C3dp3bMRzYo+5oeVO1ZD4u2HVKDh3ayysEEmfbNy5gTR3cSX9BAolqkPGW4Mo/Ewu3t4a5gIBiG+kfYnVD5dU1634GPdX2eA5U/n+WhjIyiVTFwJea+fxQT9EEZr1fGVPcEFpMqnZmKvVrWulg6AU1Reys8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TD8o2BCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TD8o2BCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74F1C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744118393;
	bh=YydpQkQSCt1rayhsR2KwAXrrMRLTGTtCJXg6ufzs4Yc=;
	h=To:Subject:From:Date:From;
	b=TD8o2BCI/bJ5aQK3dLog6V9uan/mJfu5wIMxZ9JIS1hAnMWWMaGkCGoBqb9iBBcxc
	 k6Qbt+C9qE5YX5Hbh7S6FpRUtztj32UZZyMqrUjUTJKyO/21FkPqDYBdNPc1BZ50os
	 KVs3n9Gm28BUDCMIkSq7MEy7mLv5rWSJgWjW0CDp8n3lJjXJd4lrEBPUmvrHgORDoV
	 UJW0eKhsV8CNEMNbQzgxojbk//jM1yqZ2BYEpFQ72YssSwME8dnL5Dv3CghCOiuPar
	 N+CFDmM+haNWtd4IDUU8faJsQcoSL+XtKleDXjABBbKjesKf8I9+QLtFnm/hh7zmTC
	 /2OmeLyVMyjFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BF5C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411839365.25935.1731139443049532048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a6a79b9ce02ab5bdbcdeb3661d1dc805336013400b59140651b82ac898be51f
Date: Tue, 08 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744118393
