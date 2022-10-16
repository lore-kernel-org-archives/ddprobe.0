Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8A3EBF
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E34C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665917453;
	bh=7Y0sczLKmLvgRjwEUhbcEYQjjne8rhgnbWrci2JCqEY=;
	h=To:Subject:From:Date:From;
	b=Sbo9664M06HlEeBJxqZB/5Cu7CEfb3FluRb4pMMe7hN49WE/P47iTvaMzjMAORc/N
	 4mBlhbzSEEXQgNlUU3OSG5n+e0c9h4+H5GIVBBujwrWNyYUwZWeXKQs4rKsbOr2F7G
	 K49tZRgQ5GVjleLF95vgcQ6JRuh4aMuxp1jnYAy+QfyeCpwHfQgRrWwlwMkH2QmIwd
	 0ohV9ii8uKYP1eUMOPlTkuffxlyt2A1kUjq7qVaSIzH/HYc1tpII4bli4B2ra1jz+a
	 bX4sq9dfXPJ6a29FidtMmnpHIp4oUFkdOXe1sbQ0H8jwaP7inpF9k+GBWvDMHeX0vB
	 QfSf7wDjStRMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C9CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166591745333.984.3844585364884263627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48355ee924400ea997a149458ec0216b8da18fb6918ec435ef3337619292c791
Date: Sun, 16 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665917453
