Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E66A17D8
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 679B1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666340453;
	bh=gH78lu1mBHPDp0BqSgvjR0z8MvP5tpWFoxxvejUP4qs=;
	h=To:Subject:From:Date:From;
	b=Azy+xwy5XZeT3kEyKcrhqROR6w7AYOsElieIcfVXQpyZEpwRZrsdIys2xa0zMsFXw
	 Jwoo+cARwPvKcd2yAHBTW2CjSd1gCez6935+lmxb9OcbDTl+zfPOdzeZjkmxkT+czY
	 aGRm89WRv3pV88YCE9qJfUL5MZ3Ky5OgM9c0q0OUJgDJ1UUNlD2QbYNUBkelYwzI+N
	 ZULL27X3TY4CynkFTx521+Z6FTqELmpoWxYvdRAamcHOWaReM9OsOErQyonAe5FuT2
	 FK0Q5RNBXf1phsOest1dDsT1Q+6bgltaNCXsYsIhICjiJCAaWs1Hcpyqt/JDbPAh8S
	 b2wPUWn1PdCFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51072C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166634045332.8540.7232511088345119361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31fa433755afa5f714af2d77c43b78efa113f61761a04fc9a9db6d16040023e1
Date: Fri, 21 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666340453
