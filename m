Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED587FD
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87381C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672895487;
	bh=nzDntDZ0UsE91RIqETg+uxndksdt9maF2R3OQn7EBWU=;
	h=To:Subject:From:Date:From;
	b=N0Ij3yUUxMisVS8wG4EP/Qswu7MXfZgBXrec6kifmhx5e3CWJwI+70PEQ/bYgpemW
	 awANShOpLnIy5/9srLqyFYVM1qtPN9I6tAFeSsSJVbPVqFSNomHPlEoofgp5H06Qp8
	 FADxH3Y4zPUwg3YpRzpqiyzGJ9Eyo4UO8NNElrFMQH+2gN2XPfMP19gPUD648Cg3ih
	 Dl77QVN0GdSmeZwr7u0aJbIV5myzA0WvadM8TqWdU14hOJEj3cRpZtbHUcLiKJ/N00
	 yQL0/j2u6tQ6NWzyiWJeqY2dbHKQLN4PrMJ6ylteLONiwfqRrTWagURj1Dp8R014gD
	 0MMwFEcYQiinw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B4DC3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167289548742.3013.5804675685756990561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4d0f02a1476f4c913085d18e273798abbc60413033dd5aa177e42274f5d003
Date: Thu, 05 Jan 2023 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672895487
