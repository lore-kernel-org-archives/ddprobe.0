Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF1F12290
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F3C9C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668634254;
	bh=Dx8HThpi02z5+s+2kKTak+nGChZ3THkD4WxvnnEphw4=;
	h=To:Subject:From:Date:From;
	b=Mj1YByG7ACe7egNOUiFkwSKQ3uCY1ao2m3uUhQt32GR3X8mnQIJE5yuACU95QKG90
	 5EQyqFo1MA8uT+TUNueKwGpoBX6YVuFoq4YUunTbYQ1uYXO9CQhX50wDqTGIF/+8an
	 +gmfP9vGt1s7jB8FtFpnxIbgnv1pISRJS8WsOP9IA3cp+f5HDTgZpl6iSoZun9zWTg
	 5HUWcu3mqxXTy1mSpL8x9YSIWYWwPwjxzP4a6ikDfd7+IOHJfsQI6R/iF1sy1gL7Cg
	 aUst/U1JxsK4Q6/J8SZcsr15t4AT8gMU6UHc8ew1w1o8zJDLsoiWPGwgifueC6DvGc
	 8EjLvHMO3khLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D2DC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166863425435.31218.6425490446815492007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de66b937eaa4976b4f6c025527c4207a7a577327f0e5bdfdfc3ca7487bddc798
Date: Wed, 16 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668634254
