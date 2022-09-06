Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9814A01
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C862C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662469853;
	bh=+7Rop9yx3TIlTo7077/Yru+93U6rj5iOK4MgaArBSDE=;
	h=To:Subject:From:Date:From;
	b=oABJCe9yV5AJcajf9ZQoYJL/H8LyhrPcD1H7C8GmEZ3w9GTdLVy9u+Tf+1PTEsOKV
	 3Y7m/BffJ4JVFzvacmGQg82YN+PLwXmig14wmtE9nm1lXpEJK152lZ9nFZTXylku6Z
	 6NSeQ30rrhYBk4HoUU3utEiLWSch6Stutka09wIhijMV4JedFg/0GsrcKeobvVZ47q
	 u9sAPGg7I4T9P0Km4P34MnfWIpNDVBTMESEggw/wvelIO+BSz6QDtTHAN69w7uCmf1
	 7FB/zMa906iL6MvXHyL3o//J0UjumGLraRSgO5FXHmUJHVl/8JDdNHBCvX6K99fsp1
	 nuu0pjCNzlEDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EE2ECAAD5
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166246985332.20342.3100571910546749743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320587487927b2cecf3ba920b06736ca46cd04a3f6661732ede4b3845e39f279
Date: Tue, 06 Sep 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662469853
