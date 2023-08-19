Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570892101
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 09:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C085EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 09:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692438248;
	bh=x8gOo+F6Fp5PnL5IXGzsD+2Vxq8rDSvVL2tZxUjdtu8=;
	h=To:Subject:From:Date:From;
	b=P2o5g3MNTSlPbiN4VjAPvK1YCImMmZy/ZyqLg+WQbZYlYVAc17M4NlouQHzzV9SUl
	 kGbWy7TGIPgf+lGQCB7KorPY3VXKBWxOK6jJQgQLa8j9hPCKOkdjoY1BhX+7YspIqU
	 +B9JWpI+lK/pflahB80bOFT+oOdAqiS10ZZMei0ECAvam6UOCpVpUg8nouE5A3f48t
	 pE2smR693LNF0IWhUAF3Y8F9l4XzgNcLE0zWgFJHlWwxgOonH8wD4i8pbVeziW+LL7
	 vVZi0uCnyz8eUsR4I0bsNx17UQArHlYY/J6LWLX5f8AU97bHWGDHxEIg5zDycl+esr
	 T/juw7qirG3kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5446EE49A5
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 09:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169243824867.11838.3936998070853636263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a793ff67b397eceb0c5429e8f0d5f1c0850fd3d65ffa734bc4cdabd4c13106f
Date: Sat, 19 Aug 2023 09:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692438248
