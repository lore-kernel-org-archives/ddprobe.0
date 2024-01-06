Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0141015AC
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIzuay1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A72C433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704507496;
	bh=jTgbdP1h8QGvBq1v+qXrGdWXOuQXNBbUbDybSoGhxWk=;
	h=To:Subject:From:Date:From;
	b=sIzuay1ZWqn9fKUyJ4raXGxnYjzxll5xd+2gM6AzjzEpT/3brxpJfIBfbNPICfrwf
	 n01wDSR8DeTob4J3a4j133iCrc2wr7ajDsoF2KfEgRcLBY22lkkwBEeO1DNEJ5eAmH
	 Clea+0AG/DzruY8dSPgy/jUYGmYkJngx7YTZXTqvJ62LrWSDQ0Vc/P14HgsAfzdHjc
	 DO8uZSUVcEM8+EyaONV9V0Imu3JJ+ibNvp2RQjYcuojNQH+7++Ch1JMGFvukKjctCv
	 epPvgHvb9YK5lkbuzVq74YqB96SnKiXFfJ/rMOFg6mzuiNl+5/FIGqMQS8xsO9ch3w
	 pmFpApLHBrixA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63855C3DA6E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170450749637.17395.2947796124224547449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca57a78b8ccaf94196f369f63c8a39a8b09f6c15e64e1530e65d08e7b757132
Date: Sat, 06 Jan 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704507496
