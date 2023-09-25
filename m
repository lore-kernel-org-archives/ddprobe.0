Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7434D33E5
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 06:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0D1C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 06:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695623108;
	bh=uQ66q8+abCyzpuGOx0M7rAmV8Qse1a0/yiJB7vw6jQg=;
	h=To:Subject:From:Date:From;
	b=iDVg3vIO/VtE4sK1/S8sgvl4xC8g09kOdSHcRZ8V0o632w3mBEy0WerOwaVGbz3uq
	 aChw5HDsdkK2FV+zNiXDwf2+BGpAeIfXDc6YPp+lVy1hIpY7JHYm2BZ9KdKrSfRnAn
	 D2wHUv3EgcozMkzXgkYRQrt+o3FJrIo3fe2tsVpIIr+l4ACHYid0hT4SJRI3djVSxB
	 a7QnC1AK9i2nj4CTb1QHT/8X6FZrEVMLSJhlZLxqBWQM5in3TdbQur7EuYpxSn8wIO
	 FdIIhtqxUJxsOYGgqtLOYLJoAqSppYFPE7IJy8hftP37Vu9lpc0zPqSk4CZW5Sw43F
	 2DjZUV11i9hJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03E2CE7A89
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 06:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169562310870.567.17581845584485178603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec23bc894493c8d8c42b59e15bede1b2001992fadd27f763e4ed29dfff479384
Date: Mon, 25 Sep 2023 06:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695623108
