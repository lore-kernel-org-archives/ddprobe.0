Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32AA7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7215DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669432254;
	bh=Sc9QiHC0e3nJmWy7sdYbLwKfyl5OhLAtUl3PpmMliSg=;
	h=To:Subject:From:Date:From;
	b=nza6vlRAZ7c8NsK6uWUwGa6CVJZEsmqW5gyeMaGgluTpDq2uF5Y2cLakr4BLK10Rm
	 lJds1X7N3Omn7misqgCILSLEzNrEdj1NskiEmaJMxGu2kypyxyUQNVZvKQocy5pCj2
	 MWj5cGl5txcmC70siYkvZwSf9nrZ/5aRBiSZn5rkiQFD2ABz3Nh8F3H1PNNCR+f3fo
	 I0NTfsWQ3YU3vKPBWTsny2WtRYjNoAs7ZcyNMJHJEX0B9M+14xz9DiubUrLAYD5pTc
	 WbJpB+COf1HlRW6618aeQ1Vf6TnggDnAS42usT7OHRRTszJKMvQkdkZZjfOQ5iCQyL
	 FJplsmq/nj+VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5241BC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166943225432.28993.18307398749802917257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2418d0e3ddb56e0cd857bff3d74cfe28762b8a11762b1d9ecc929cc45076825f
Date: Sat, 26 Nov 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669432254
