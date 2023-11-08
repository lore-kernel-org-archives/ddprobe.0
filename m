Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E78B101C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+xTJJNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E751C433C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699436896;
	bh=NgibuzlAt5JiPO0o8W1CcLS3qM2nCPCc+YBHum6ciIg=;
	h=To:Subject:From:Date:From;
	b=t+xTJJNHkqZDDcPMzz4tYkgfD86pufqns93szc1n4sYk175o214A75DJuAZWaDZTi
	 xwIkBYWK8dLv9AdEyNo5TVvIj9NUUYM1QYygpHSDf+jS+c8lw/N+HvbIUbyZtj/HLP
	 Hyfe/JcdcE6SUSLm8FqnhDVJ2WRkdo/rVgu4q2tIoGGsKbAfEOh1Ze767fq2gF8XDa
	 aYh5TgJ9pKWpqY/zY20i/xth8XbKQfDuzW4CFORHNcUEN6M7yDsIb84WDT26Cy0ql4
	 UiPOSQ2M1BHSudhaStwv0JgSXdmhWFrV3J+c294B7W5W9DCHCQOea3yythbGzBfkRU
	 f2E2TKzJVu1GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643F5C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169943689639.7775.14736217694239733456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1eb8fb03202a00e5b669c0770433341427620bf8818ac5b86f0bb82467fc52e
Date: Wed, 08 Nov 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699436896
