Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5898024E4C6
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786826434; cv=none; b=N99qafK3B+hoqcc3tvWrNmwwWs4GFZz4vEPRb0asUyydD+cNeltWIwfOm+QzVw9o1Lub8oiKgS6B+VJjIBpKDh2Gv5ugoauh/xntSJkLyk0JWMKBI4zH80azqz2E3UlfvEGPNktyFENQDZy46facJrAa+h2UOxWxua6B1Nt9gAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786826434; c=relaxed/simple;
	bh=9eyIiWAzAw4KyswmSeBY2zzL/kWL0DcGhrIWOleRVIg=;
	h=To:Subject:From:Message-Id:Date; b=eMIeogaUeKNXYEp9t5Y/8/t2dKTX6X7Zk4rR6Z9MYp4vlfN3J0u9nAgYH/nijuG3J6DMnUfUx9iytpcBnnA62/p1cjpHZJArtLQx6+dqDuYIyN0Fq8U0VOHuOMpd6lgia7xtW0H5nxgCLEG58hOl6Z7zfMuq6WmqyY8Mc0bSJSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSahUtcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSahUtcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BD0C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786826433;
	bh=9eyIiWAzAw4KyswmSeBY2zzL/kWL0DcGhrIWOleRVIg=;
	h=To:Subject:From:Date:From;
	b=sSahUtclLO9KJVgGzsJGWtfMX+d+tFZLujeoiV8iAKx4CywFQslfRW07p/RVuCB+X
	 w+TS4P+6GIOG0auzC3jh0KvWk5geOi9+2yuOM4ie29qPLZpswfRO/lH9pzkZpt+NSg
	 c1sMghyJGhXeseOT/HyNVclvi8p2kLpp3BatQxLHaukXGirE1vMJbjZPHERC6MN2mS
	 HN+wAoFSSHnLZsrMWSnR9zuF/K4y759VEiutt+nf9Ekjijak0Q1Zc3TOJFby3zzGgx
	 2TDR+b2zBoDfkTkVO1HtXs9F49CV/gYJItx9LBG8m0p08POrKnTd3kP6bsErZi+6if
	 7/sHbLbHZfxOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5F8C5DF75
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682643370.16053.2710310792020025666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8efe394a9873fbab49e93cd258cff88b266fa9032f1c1f43b30f127e11d7f46
Date: Sat, 15 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786826433
