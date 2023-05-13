Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BC92583
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 19:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01644C433D2
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 19:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684006686;
	bh=RLD7FR1vnIlXmI88B4/04NYNiqiDJSb4EYfz1tFVvw0=;
	h=To:Subject:From:Date:From;
	b=dKam6rM33BUcT+dqq8X9OU5ff1sGQ3jB23OL0i0rTUIkhnZ3KTbMaZUoWDX2wMnK4
	 LUhe9zwYQupXB4zvtddv6uY4WE48eePRf0RGHB0NNAYJcLSR78tzHPChDVBNHocqY5
	 8DE2DGNH0ErSE6Xbz1cnCMFuYbw/PmQcBG9EWpcMYkM4pvY202QkU70HeBg6lR9tp6
	 U51M/kRNbk8Z0qxZEiGpm7Gl3ugImMEDoslyeqjNdyqdlj9jlniTxvA2pFqEW3wJAS
	 W/l+pXwtxNTZWGNBQsJmPeNIMcAZBedx1GXpzSqawgaD2j0c2PJ/uT2078+TN/o8c8
	 tgIex+bNKvpIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D385AC77B7D
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 19:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168400668585.27629.3443164306129187332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a073da5c7d58bdd18db45b726b905058ed472e06d0aec39453aa9da8b5dba8
Date: Sat, 13 May 2023 19:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684006685
