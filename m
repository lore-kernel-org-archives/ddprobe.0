Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C887D7F3
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E7B5C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663526453;
	bh=KIdQ3VhMro4xzJqiU1IwKWvxQnTY1v7zR9V1qDwoN90=;
	h=To:Subject:From:Date:From;
	b=J7hjhMq62lUIdkHwloYbkDF8Hu4a224gHb/jKpdMnGUzdxziYbBQxIhlGLR7DaUkG
	 X9X12hjX6BQZOKVuVhIiE/MS/cNiGSvpeyedM+axJBVouF0ZmcuNYppepJruuwxlzD
	 ZyoMxuPHWshEVUhFDTbxN5exgh4ItD+ELK3LHWUcEtzxmTi2lIUEpyqmhD/4aoaueo
	 Gp2cUTU8tptQ+2OqNH8LAzmSrwqMxKmay54TBGSEABjeaWTztCx1P9e1hWY/VxPZhB
	 DdahaT7YuYyV3vvXNZDJcla6Oh/1ANnxxMnyNUNCdzbvz4qlT0e8acs+7alzRtq1YX
	 1m35LwNX6IQJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53220C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166352645333.9503.6447853601764234387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094cd6aabe190bee47e2937728d7af9cf599e5007fd85a282402e9b0f44adf63
Date: Sun, 18 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663526453
