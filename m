Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2448140DFB5
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775958454; cv=none; b=FMXPTINt5bhEqg5XtGrUgmNBmFWcG12ReQOhrT7WiM2JBzDcHuXswss5kaO/Rk+oDLJ9VqTEzgTLC6pBxOVXxNStU/2Rn6M1g8pVlqviOl9xEnadyJyzVIb9C7rW0ccamZDHqu9YvExyTseqX17976/dHgSwqmYVhkO+xPEVEWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775958454; c=relaxed/simple;
	bh=dWjQFhApHvI2vKQUsJNKYfiOCC/MZc0f3cVJTvbRg3w=;
	h=To:Subject:From:Message-Id:Date; b=X8WvXRfGzXYTo0XWK/NywesHsMyGAPEpDOkqtXjibIlvzFIiQwrpyOoa9Z5N9FkhCdgbmqPgqVsAIYhXpaC5Db9X+p6bz1yPKZE0HZBdffrPJ4CtRXhMbLGjjL5cMwkex4Gi6dTEKN9N2b5Qj1vgbwqJzFu9Qs9gfi7RuieHzN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoNLGgXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoNLGgXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6D4C116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775958453;
	bh=dWjQFhApHvI2vKQUsJNKYfiOCC/MZc0f3cVJTvbRg3w=;
	h=To:Subject:From:Date:From;
	b=JoNLGgXJrB3v9cl0U8ke6zTKIsiTwSS9ea8wgJ2kO2ZAGYCBYrVi9JOd9KYcnpavg
	 i1BUP8fTJBuwV72DqozLriq5his/jtAm1A+mEagyau+YMdE0xclv+VFRb8qkVR1naZ
	 Dt30gaP12OvdcfT1xyHdZueZ/vGRN0jhT46COFB6ervY3/FesG3gv84nNuLIkeyfIC
	 w24WvfSmsmZDKp+7iHG6Vbz8tx7RS4J514XIU5o13uzF7jIozpfwevyeMO938kvZBb
	 9kywMr4jA4jbLHIsKfjz+NuAoGkRVSstGxHV7Ut5qp5hJg0rMt1FhUh7HK0c5JfTuD
	 pr8vwvHwqcCyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAD3F3ED6B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595845368.2133.12966284998048662281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46bfd3cff6c750865676b11bc2985e00075c01e6ca098d52f40451bb0e39a91b
Date: Sun, 12 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775958453
