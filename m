Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00417E5
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C1A8C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661986253;
	bh=4aRQw+RDGjJHu533K0FS/n8VquwLPWIoqMBMJDXvTbc=;
	h=To:Subject:From:Date:From;
	b=o0VmFZPlBwCdNoMw4CGt2svfz5mg8JyTilckSITqzwT9n+kbYJZ9E3XcGftO73DHP
	 ZQExQBG+Ia6wJr4OJDa6SOWB6WKfiJ8vk47dNWh3/WJn9xMwKTRmtSoPraC7pyeMR6
	 z42HViNfNetaprU8t8MH5dUsZs+qCrOl/1xsVVvnXE5s7tcn9bORoxvMFE+3vBPVbm
	 BYKm0Z5Z6p75pJ1FvsLVmwjZ3m9cYVBCBQsQRpNYQeFGHkDWLotDBqtL8cgEg2Z1Wi
	 b4RY7uIqBJGGTOCA5eW2BM0gpgWL8oMXop/7O+wggk5Ppm6BG6kb0pna9WZ+KHGkWO
	 g0nMzZ54UA9Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52133ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166198625332.25374.15524396810683034010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc5ede792ae609e9590b6f5e79ad244d0759613488d6e9360f3b30d9ad64e6bf
Date: Wed, 31 Aug 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661986253
