Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69958136B
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 07:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5382C43397
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 07:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694072648;
	bh=nnTDNzOqNXk90Te8dwPerhpFmQBjDG8i6kufr6ZUJpY=;
	h=To:Subject:From:Date:From;
	b=rcKVeYmJfiNHaob+F0t1UFyqWdeh0FR08npRlO7X8IAbkFJvViW4zAyB4V4BOKts3
	 AgGRKMGqTFC4fGhmnTVQg42fBSgb7SMJ+82jZx9EI5Dn3BKTFBKgtzj4QZ4AXF4PR1
	 uvqejyB9bK+YlIXzRUhcxjdwWLzPdou8JTH50vEis9Ev1GN82P+I0gvofRBKkVyW1d
	 u/iSuyHyRwUhl/COAhUn2nDMt0IuDeXqjYLCz6GT6U9COGDQ3YIx0LICM3+B6xc+B3
	 T3QG1QxYGRwtqfrzdYB+bRT33iSZQz4WYkc4LrdPxl38euDmiaHhYmoBvwAmxKiyGY
	 kg4TzmPcud3og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A936FEE14D0
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 07:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169407264868.13811.6477908708102423938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75128ee12919d1f38842fe1ccd61374722ebae5914f9cdc4241eef6a3990558
Date: Thu, 07 Sep 2023 07:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694072648
