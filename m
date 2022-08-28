Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07A67C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 11:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69EA2C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 11:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661685052;
	bh=Zzf8sywKU1HwTn3G5GNgwgIUnJcEoK/ylfDoFdmzrrc=;
	h=To:Subject:From:Date:From;
	b=RvPbynRMnMEUO9xJvorAGALdthg0kA9a1Au4CSLurz7V1m8f/ujwH4d+zMWfeBmBg
	 GDQD3av9+V5Def086N+OyVVt1ppZOrNGqOPIIHW0zfRxIyxOBfEHlD/LnEPticVl/4
	 BvozQBxNYqj0Sg9QGvbvwNdAw8Vrj6LYkh4KWbjcc2NI5URYFPTVbfg/3IqSiDNTtF
	 vZrz8EYCOuxg/jDHooIs4a4JYr+2Tdh15/XCDC4xa5Yamz2mvTqmPZszFNzV2ABZKp
	 K4qFHQJFFHSrnDXiTOvRsY75C17nbx1T5LY24FIPjFy5osyevm9FrZ0ydSLfZ5XFO/
	 OykHVZZ6uxRkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5147BC0502C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 11:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168505232.27823.13782492014959119097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc75a9cdc7ef3f4fcf2eb68e7bff34e87e65dbb1140d4b35b76b7a151d8a9e29
Date: Sun, 28 Aug 2022 11:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661685052
