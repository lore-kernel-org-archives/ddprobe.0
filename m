Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7CE028EB
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73684C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669486854;
	bh=zWpJYDdpDmQZjcNwoO6CVRUuRSHb3A5BDuvLAOCIIhE=;
	h=To:Subject:From:Date:From;
	b=BAwa5I3JPEigZeRvpy/Pm43afmBjmjma0HBLrjNcS4rQg6IcYMFwUGatBHefaS+Ki
	 1R4bDSsP/QBW/P7GSEC2sXXHE3FfCZEguI+tcKTigkHd73nv4MqAVTUn85hWyDo5OW
	 vLW9wHICTZJreNxILq+V42gBVfKH4EEWYONRSK9sEs8N5diWJ6YFssWlD39W78Xc0F
	 F9Bg1MQ4/fqZSb03+jk5dLZOTw7HtUtyjwjNZ9AMeigi2FN4iLDDPnPZKhsab3ZeXg
	 3VXnY5MvqOZoxlklJ8eRE7M0+x5gC/tnQ/RCEayM6DjajexDFzY9k+vrXj9R1tEgWX
	 xs4Y9MgXZN8Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59399C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166948685435.15954.9948288496149287925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47fa36f1bc5b4b29d7e5d5a8fcf0446e6feff3dde12754f58754282379c8c2c
Date: Sat, 26 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669486854
