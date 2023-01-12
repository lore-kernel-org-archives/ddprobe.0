Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE4F2CA4
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B25BC433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673526087;
	bh=FV5+huGRSZikkShzQyIhchKLskL4CQv+lUlgFXQbRvE=;
	h=To:Subject:From:Date:From;
	b=rCXFY34P4NY5kXqBsyvG7EyX51NubovaOzTRSLw86HRZ2WZ72SvH4utrnW1MGo39Q
	 6RB7XFu7dnUp3P9lswe01yqBdrtgT5/nHQavnbQ+TBTuX4BE2gSNpvzSK9Ro+j7uSm
	 jfq2t+fUNRqVA9cK3/b+q5A862GNesYKNLcsayUHvYHuSZRpk/4RHOFTpavm5McSTl
	 +TQx3DJhd5W3/zkg5OYwACMdQHXnW+TBDb3o/F4UanFTSGGQmdbURNt0KG8aPcaHEL
	 a8D49Wkl5ZobulRXYbpET8e1BLnHiVFBBbjjyE72+em6f80nbcZmYNOgv7vSuX6vxX
	 AVbwjsWb6S/sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E20C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167352608740.3921.5762840871480468757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e56bf7148c65ca38da90019d3b1da7876bfc62fafd1b3a69477ecf8ff26a0d8
Date: Thu, 12 Jan 2023 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673526087
