Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351A9214A7F
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746602394; cv=none; b=WjQySePiweG9VEpnlmFpMWVZJP7L/8zYuUYjAu2J3fZdU7ccuZZE0fo4uV2LHil0DNUYbMBrB+UxPCFAxwPIQTeH3fA1IarCAkCQ49CeTBgzPppfQe0koH2yr5F6PRpdTSs8nS2Uh2IHTWR3jKjAAnwhCu4zYbS3WOUgZkApmgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746602394; c=relaxed/simple;
	bh=64LgKriYRhzTBl2YzgZGt4e0nay1re/auqGe+tYu3jw=;
	h=To:Subject:From:Message-Id:Date; b=li62Zo6gbKq5Z7tgWt2zJbnSWocb5WoCxstjsuFI62jdQVNnWikgiRORIVRl2H4cX31cYue7vMy+zpY8lnXHsM5zvq8/hAUWGqpXudF81BK3Y6av0u2XOFIJIC4W6vTzGXtgo5zVJ7iKkQvintqBWjTx9gAhCulOQC+T6f8xIl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQz7spiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQz7spiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F391C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746602393;
	bh=64LgKriYRhzTBl2YzgZGt4e0nay1re/auqGe+tYu3jw=;
	h=To:Subject:From:Date:From;
	b=IQz7spiVdGf53NZc2qnyG1Z4H8Trcvzuv0wfQPFo9JzT9vWb68lG+lJGH9je/P3oB
	 u+YbBImDCZqiuX4umgWJOATZ9gY/zdlG9gv5yoLWW2Iq/e/+EE4sVev4SmVm0IfRH7
	 z1rcceEgfiaoDi/GOWaOShjuKB1k8yDPv3mHkjbXSDVY4zMvPV7fFXDvBY1KMu2aNo
	 SE8l5WA+Qx/3IpKaEsEFtlD41NZYVyr+3bWyEZss2n4RzER/fPe6yHQ+AYcumf+L3K
	 H6mteTjy5MrAv+4ZkLDm8X1Ukp/9+10FN2pOuMIDQb5xlu9DSUOvbWIsfnt+WyD+9a
	 VgGPgw7YwlGUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDADC3ABB6
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660239357.27259.2723904054045096536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a92c21680a227a561b12ff2fbdc13548b23368c9bcedaf509c3eafc07fa106f
Date: Wed, 07 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746602393
