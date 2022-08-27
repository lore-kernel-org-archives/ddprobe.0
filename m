Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D473D442A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70660C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661630452;
	bh=fRwyAdt4f1JdwWQG/XN3e46xwnHmpz+x7mIbwidjmkw=;
	h=To:Subject:From:Date:From;
	b=tWfQUUPwc5xJYiRVNYaFw/KM44VfdG4PqXjuw6Nw7Q+X6k+YpkbTEh79/H2txNrNO
	 tHKqTJT+eCssAax76bzPmnYqC9YAtk8pxgwdN8/7ILCLDEhQBdDRDLYAwM5rV5Wi1S
	 5PqKpE/OuMIMPqdSOJfRBoWfpW6x+Pq0vRUa33eNyB/oqYg45I7bryriYN1EIrFCTQ
	 /EKAtWN5NXIRjo0H5CtAVUv7J8Hlt8F8scQwZu4jYW5bOtt4vAwmAGMLTmGalS+Fbo
	 djn0TWLpwRH6osK/CHggl/zJuKIwrGiYZ/UYjPqeXBvGEE7+KruLfAmfx/XMvdSM9+
	 ROyVxmRdrJqxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58890ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163045232.21865.18276242828727369883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3678964a392f891f495ef4f3100ffba9b28f457f1bbb6261fe88314fc3b8afab
Date: Sat, 27 Aug 2022 20:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661630452
