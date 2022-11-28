Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDD3AD27
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAE8C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669675254;
	bh=hcoAtIRMLEiohT+SN9yK+QYbl5dP+QQ3hWdritUsA7o=;
	h=To:Subject:From:Date:From;
	b=tK0ZrsA/GEw0rKxN5JbaP/fjWLIvfKTWq8urpvp+MhjFrSWbLxcVz5ijBM3tJsv3u
	 Oj5iLlE77KShjCpoR0t8v2Vnp/q2s3nZDdz1Vc4HJ0niX/hPga8Zw8YSh6cJ3AiXE+
	 KiGrBUWYk0c5kDLkjhzegkKUNsyCQzpkc1NyHOFXMV264adG7K2RkfSRZIl/o7SIOu
	 ASt6644paQHy/sEwQ+AQQjXX8OLF2Ycpn+XxIG5e0nShinBpqo0VjWre8KaJ5WJWI1
	 8f5zgGX8oeub8TX4XplWqEcs0LptWc6jnimq+QRxyZGsvhuMbjaUpg0IsFdHADrZKn
	 oVB8xK9yElPDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54582C43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166967525433.21768.10547602218971081491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf94b9b960ffaa4f6acb0a72308206abe92fcd5d5d7596a7c37a04c73c6a9c5
Date: Mon, 28 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669675254
