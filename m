Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6CD2564
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 14:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C09C433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 14:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683470285;
	bh=I5j0f+Qn1B0DEjqYyPvuh/DrjyIkIbN72ArHPjXTc90=;
	h=To:Subject:From:Date:From;
	b=WSgVnj8kfsRNx33SzlX1s00QsairrzlxeM9oUrqFPKWh5OZc38Bay6I5EQHGSLDFg
	 MRpS1zUnlXLGSuZJrAG9JGlEUxPfjmKU0MzTiU4X4PcMBgyz2fuz4f46vGn5ZlLmaU
	 YhNHDcvyWEfLt5s5lCOXS41Lz7PJnCZcu03VPX556b0mCp626jiICauadoaGwnJRVN
	 uE/UzbfNZtjzKE760DQxbBlf1/5i/+tVSdaJyEKTWvysUY2d/lkqmCObpiidn3a+QD
	 FO1dlkYbE8Qdw5BXrzRMEaz4c0fAisaHnVjVfiCjMFn1Y6x3/cDgEvgMlIRrh9TmqP
	 puqzqkEzVqwvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0125C77B75
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 14:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168347028576.31457.407553690493553841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8eb3ce5bc3a8e3d184a5503b3bc7a3f5f7e0e2b16dd85eb157b7f44b970cd6
Date: Sun, 07 May 2023 14:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683470285
