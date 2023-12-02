Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA6D4418
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqhwsHg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EBD6C433C9
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701558496;
	bh=ixSZ5t7WFNGW0alxfAc6eNlR082HNqOAPBDSBnLxkzM=;
	h=To:Subject:From:Date:From;
	b=UqhwsHg3+W4B4tXnvbvhRcsweCRUTKbkooyXNVeU18FKREF1xyjNl6blJ4vmAZs+A
	 QGW/w4bMKUFthn4GUp6OS/n2YyeOsEQ4fsUzfK3rejtIX+Wf2IJWGqy1qCiA+DW58c
	 weEdzAV87EplQscQ/mwGPITHOgeHcCEu4Hvl6Hh47XJFMm2MFn3XS2zYLQFrb+7y7g
	 kWMlKmVTcOGAV3HWxo9Xm5xH/Jdoji4oX+/T6nq3oM1SOJUoc5Qj+1x7Z/BO0gjWQv
	 6cJctjtXlbL7d+2r3HkgMsNsKjuD0WjyCJAwQtgUB0n4b7b7jj90w3vU35YvVGtNEe
	 NFp8KVuFGaLpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7F4C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170155849640.8179.12133684246544939843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b5b094ff224b89c1551065729beb1b4e7e7a2c4b214eb3103a98d1f59b57868
Date: Sat, 02 Dec 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701558496
