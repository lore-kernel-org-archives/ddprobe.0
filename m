Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E1619FA93
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743023994; cv=none; b=ZL6NQbhht5myNUypq+SU+C2zT5zU9hcuBwJgOKCaEQKTxTejGCl75JqBs3WyuQmQySS5uRTRK6ncDHNwzXiGx1kp8C+BRY+SkrpmpZFxVpjBoPue+dMMDtO4HfETBi5jOKYUePMd9JVGoanvhNAYby3E1agdhc8SQbcuItDOd20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743023994; c=relaxed/simple;
	bh=FTUDKTGIIILMXpMGJMhBmTjBJ/VThtSRj6hIU9kzjog=;
	h=To:Subject:From:Message-Id:Date; b=RIR+JSDu5omRu3gHbAi+ipGPHKDbdHclWrwHj0gWJ2YYbBoqbe7vMk2xQyP8ATBSHTw8fpv+simId4VGp2JbluEdY21lllrTkthxir6J7UuQbC8aRIDLmR5Bue5Y1803pQKwylBzy/7R4eipabvUtATPb7mTB1zN6boxeX/bskM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QV3GpNIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QV3GpNIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7D9C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743023993;
	bh=FTUDKTGIIILMXpMGJMhBmTjBJ/VThtSRj6hIU9kzjog=;
	h=To:Subject:From:Date:From;
	b=QV3GpNIbgmAFPgSYFtgd6BW5JNk3u56Hfq+dknn7mONRbVrLpWXBg/0dX5K5sF2PD
	 U50r7nkAtX89PANB4jNz0YMQ5E7X/EFJ+T+9XfAMJOtQQoma8XKciIn1KQdA7YRdHS
	 jf/2uRz0D+q+Sqv87Tcg6yAddk2m0WoQzHgeotAvAhY2Wd9Rlr3Eu9uZq4BtNaKZTO
	 N315cWAvnhY3pvLx3KCywkJZbbu6Bhfl+tZaGdZ21XWx6nwWDu07nAg3CFS3Tg5CZf
	 JbqD01VgOJfh7QsrPTdr+reFOJS47TuDZnBmrHtSqtzlN0XfE6Oh2ToLS77XmagcTA
	 8vTgaQSDDWccA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E93AC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302399363.31478.16380758143786938407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce56f87bcaac3f9c93ba084553d92b45b73240d0fbcc11c1d1cf407c2063d4f9
Date: Wed, 26 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743023993
