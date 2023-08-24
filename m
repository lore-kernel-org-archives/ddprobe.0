Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7161A24550
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 12:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D44C433C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 12:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692878648;
	bh=3pquWQHdRPse3oDRz3eK4IfoRxQ0a8XFm9Xro6lLwKU=;
	h=To:Subject:From:Date:From;
	b=CwjMjL8fIyC7ndy6D6D5VDnnMLzoLZKQd8F+/yqTYXUdFdKjJsce/wOiH0yNVqfl1
	 i6MD6qDtInIqUK0Pq5a3Avjo1dGZxd0bmwLoHZ5/QBVWhlx1g2eKie83ZQaeMeZXsO
	 NrISqFto+cRh2Z5aWwt1PbLNgyeM0oEVftYX4TNpiZfyLZ3MDCxyowOWJUII0aIVsh
	 btGWiDrxZ4OtE/JmGh0GENpiYLjt7v8lEruNX1xrdXRC70Ab77h32sK2QQbUSTxNyG
	 DaKoWZZS/VnnvK7qD2QAuXdAVHHaUBMHlY4GJRH7hwM8LND9UEfuTb76x01RmldQq6
	 gvhM5RO1nK61g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E91C3DA6F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 12:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169287864867.20082.4064530620291975359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f4dc9fb97dd3d07f873e412d948167b0c15eac81e0a0fd5d169fc28b0ab578
Date: Thu, 24 Aug 2023 12:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692878648
