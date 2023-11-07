Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B835191
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHmwbTv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82DCAC433C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699318096;
	bh=FZsT8d+HOcXM5IeBwfRwF4cv7D/FhmSHghDBZVsHLCA=;
	h=To:Subject:From:Date:From;
	b=BHmwbTv+CEtw+8y/PkWGsQ8gowmtNOTRoo25+CXkWmnGwUXZX7y1ZFeg1+LMLJj5x
	 fpb7W9PudpVXFTT5Q8PM4Fv/8rM0XzmDMKsJvT7958eT6YwcVilLvbND+waNyFen3T
	 ghn8EC+Q2ArS+5YZewIv4yUqupJNUwCl42B4cFTKFM2C6TF2U1eJ3U2P9U+FMntwXm
	 X2wsyHFJco3rMTrA+2WR5yHD2hYGX4q5IUicX082nq8IzGKcfNqUc7pdTwIkjCYUqO
	 55hhvzUgmXKq7zBYVz12TfU4vhE4WgVeH5hFuJKctL1ptIJST/ZyoLzKfkGzqmWLoE
	 sQ8AEKd+h5wdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65982C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169931809640.25077.12145513141564806546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa571b6e44e699ffc2338f14241651205fdbe5dd5b551e82a74351960608242
Date: Tue, 07 Nov 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699318096
