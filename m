Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BB715A4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FD18C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673225487;
	bh=bodwLD/JLEPOW3xFx4cgsPXdwU+Oir36jTFyfpdzYaM=;
	h=To:Subject:From:Date:From;
	b=V7v0WBU2WiHJQ2m0pO9EL4aVycZpby0ZM1Vw+BiYMsRtZ6H/nvW4i9BskvyheHKzI
	 wE7xRa2bEyYIxVJ1z4EDqEaj2SRTUOXMu/rCZKrS4MLN3uxpljtZfhzojkzh7y74ed
	 MGSzvLCxLu9MACr5IGWQFlJ0UNx9AVwxqhsHPi2xILiZ/UgL5Jfz1senTw1uEyPrPW
	 KO+eQgJPdZSp/AWkRK4qFLRCLOCwiHLZFT0IKC/qYe73fjClhVQMPvqu8rgRbuXNz0
	 zr2DiJa3J4nBgnBXKqLNG3TB9oGzgbPRyUNaA/zjl9q8+37tBcKG8DpnhhGvQfTqfc
	 F3aqJrsCtgO3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70BB5C54EBC
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167322548744.3682.4031987557074661536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757142866d834152297776e4a4a85f91d761500d4fbfb6e139c1a2c020992d77
Date: Mon, 09 Jan 2023 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673225487
