Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC2915C5
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 15:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F1BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 15:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689433868;
	bh=xFyKi0acDOMjWgYxlfDl95PZLVSgB/tm5xn8qWcdxkU=;
	h=To:Subject:From:Date:From;
	b=Sqm4TvJrMaHToCrd+vzJBSe8wr1BxP2vEA7oOvpCC1uMOdlys5oJ09pOINWssDbic
	 zOpdLFFV/D0qAORZc2SQgoOZS8BOkKxn8qMxdWWM9ZGADQgev4MWxK86RLjWZGfCge
	 5qrjrMz7CBhLds1LsTg+yQee4fNtt+3NATi1NtOpYE4g0gx3IQZ00xQb6VDETOJ6ZI
	 ZLXThSg8qh/nC0I5t/IK6qnPSwhO54fibTRwZXDTmmhvm21RdNZbBjcSnjel+UXO1k
	 JzB7zPffVpJdZMw4gIVOdoACc3arwS2wF6e7WZcYcsZfR/PB0GGnUToBj90KJjQOk1
	 Zgzd9TZ98adyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9364C001B0
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 15:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168943386868.13091.4698098776331434675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafabb32895612787c14a6776cffdaa4ce1536dae54ea7fe25d0985c8adc61d0
Date: Sat, 15 Jul 2023 15:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689433868
