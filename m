Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4E23D61
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 09:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3104C433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 09:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684487285;
	bh=c33hu7j+5WcJB4BZiF7CBLMARKB4vLATLToHbuhvQKU=;
	h=To:Subject:From:Date:From;
	b=KAdPenyidY9EwvyGoDss50uSlgJvdfLSu2Vq1U7hUyZJ894LEKoe4KavVwoBcnZYY
	 cKpYGn+N+ehw9/bobUI/tnYuAWiamf/v+wrf+YWR2Dad1rgVxAVfWjmsfme6QxKMEI
	 HdfvQAo7ssvAC5rjcLRtynr/jYMrjVek7jy8qJf3/IZg8IjskGjnX0EDcv+5adVdfx
	 ztSrMcN+TOjGhF9NpQHJkiXyHWMS+u+1LoYh89JjhHE2icdEsLQCUmWBPsvWVy8QEQ
	 PibZAe7x+D+lYfFiZWNWqImh5IsWyYRr9T49TLKD4oypNRbEZcGUN4nNup6iJmEK1r
	 CUxY1ddcglHMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34F5C77B7A
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 09:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168448728572.17051.12531239454466975872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b1525de895131606effefd448a05850a26d4e5e4da3e8fa5f32c44ca37ded2
Date: Fri, 19 May 2023 09:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684487285
