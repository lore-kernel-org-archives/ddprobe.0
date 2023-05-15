Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4901E15A6
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 02:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F6EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 02:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684117145;
	bh=jqJucjxZKOwGzhx73KXWYh0CPNSfIZfjrefrWB9QTJE=;
	h=To:Subject:From:Date:From;
	b=RO1uKxKdR31oVjDox7PhtEDD9EHKPJInsZyc//16TMN6Rmxlg4dB7gWWQlR04q6XD
	 td5pPp75hPSARzjN/rmgidYLHVqqITrFkF3W91HiBb+Lr0znhFREvSmFM5z9sFrg6H
	 UzyDXiZ6NV4dgnq/cMoPkemONNybz8WhKpvEviRhnlfCv3Gl7uaJXbDToSNyncoA2t
	 gYtc6vxM22Tdiev/67bbc9NSQbyTN9Bxal5JI/j7WiHhRKXLhi1dlqCcOupxTSa06A
	 3sSXsomItjUbjKdZde5OL8mBHXaKyD7JwUwK6IOFAEoT9BwyvBqBoObHpntVkbfQY0
	 RHuzNQQGW8MUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23F3C7EE22
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 02:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168411714578.9082.12622603735857332326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620cb3cc937fc92793ff03617d077900bf44e6f3de50f2b53eb34281103d1b87
Date: Mon, 15 May 2023 02:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684117145
