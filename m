Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9F06105
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 03:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2763C433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 03:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691031728;
	bh=6cvTNsXZ1Pg3Q582xdO9cUBka9Vznf4ebhMBcy0XZuE=;
	h=To:Subject:From:Date:From;
	b=dL9wkUGcQIA2mpw9Jw9ncPLYCLIMV9cPoZFbntMF6A0IRjBV+Zslxl4olsVjwVIeb
	 wuIWRsT45kEcEEKJIXDEhrlZHgNYCucTXvygj/DFNAooc4DzUk8/7ILCLV9uerAUN9
	 IOlncsioC6GbeiK3dyBvkB6J+g0pG7zljYrX3jGkFYOE7GrNkqtM5kZR2RSGQn2S5b
	 PTjIEG+yomj4QT8mIHuc3EOnWRuP81bHyCsqLaL4813ryuF7kVE4PNT7RmdD0Jf6pF
	 rWNap0OjMTVFoomWSZk0GlQMZvg2RJvAx01eQSny0H1bJhx+DkGiHtetSeiUw1MHuI
	 mZZl7T8aWnT1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7909C04A6A
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 03:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169103172867.7125.3482386412061857577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deac0479b3b45c3e01eb73d71ff41d05f6901b93fdb99d8a9653f17db7f7bf08
Date: Thu, 03 Aug 2023 03:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691031728
