Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7670917C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 03:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16B1DC433EF
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 03:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680320586;
	bh=rt4nwYIpdYBGmVRVXS0xOeqKZC6k+GKNIPMeYwe49pk=;
	h=To:Subject:From:Date:From;
	b=cLBwzEfFHvJUzqNMRmqe6GlIZJCWuYH/jPvwwDXWWHsvdpsLsps2ASR46K0FUnqUV
	 3o2C3kqxtazfciVxxFcu3ybwmxokE81kohjgZbSYuvg3Roc8hlRgMTRpexqNMgTNaI
	 VODUeohhex0RcQF4VXOtx8sqQ8VGJBYA31F3s7Fj7ajnwWh2Z1uHlqtcibA+Z3vO0Y
	 BVHe35TTtJ+Xu6WBoC8JhGuODMagpCF7fORaEByRUzW5zSMNCWceecVJYRTRR7TPNI
	 ja5auYjRp8pdKGCKiF/1PerZKvq4Zh/c58xYX2w94cx9kafB5+8sTwmo7pt/43Orwj
	 Ycmp7rAyUykHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9A16C6FD1D
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 03:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168032058590.17612.13832102869322127592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2692ba272fc5a8f29c1d3a281e4f001f00c1dc0321480762cc62e7421a0b0bd1
Date: Sat, 01 Apr 2023 03:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680320585
