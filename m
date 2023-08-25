Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D8CA41
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 05:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD8FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692939848;
	bh=OoKKu54zk/uNvVTgMbq9JThxNx/awkKneM+KF6USz4Q=;
	h=To:Subject:From:Date:From;
	b=Te76RzX8IAtxM+R7cehlo3WqBcbpMyYreT/bkMPqPzb5Y7LDTyJdmuc/BLQUHj9q7
	 SEZes+SDcw5ECqb0NMZ0fFdqtM7p+LI6LetBjVqLGrCm+3TbUeU8B5P1rwVjEWkZpU
	 oLX8LGUKAdR0vH9EczJMhZBNBir2hc+PGZz9yfLoHK3lTsqelimEAP22v+9rB0Womp
	 msUIzxODU2/ezch9cL+DRVv+lTAluVn7YM5wsu0GCBJEQWKOb762KoXsXSL761XzCX
	 w6FvUBtwVfbkmjn+RgWWV6GyEI3ufV8dYsNc0hsfGH3aaWISr+7VKCc86dtP5YSV4b
	 184ayJfOk0BJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E35C71133
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 05:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169293984873.31811.540847316078789111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e42f3f6780f57d6caf3c1fb3421c6a1ab1d3a2302e73778ced2fab17cb9c02
Date: Fri, 25 Aug 2023 05:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692939848
