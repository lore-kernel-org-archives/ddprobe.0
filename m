Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00CB67E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E083C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671600687;
	bh=LVHgUswaAyuCg2mesHdbXXsX1/BjX4YZhj7HzzyvFhU=;
	h=To:Subject:From:Date:From;
	b=A1x3FqBmSpzxzj+1uxyvieUqOTGZIhjQunA5+kJmgPBlMnjtiEYHtGLXSK/iqkJGm
	 OKfQUXt1d7WqMegJ3gEHK5q2ZZWME2xXa4yjzEsi3VhyVWFn5RxQOVdQKm3Ip055N5
	 /1lqRvGAovfovQH/u2itSBHikYZVBqawbt4gDLOwmG/h98PMD0BCwidtDFiPBJ8k/D
	 A4d8aAx9hhbhDKKj+8ASDQ7Qa6dZJv4D4L4b68yQIvT7psTPK4IUBMcfgVdhkgZ39I
	 mj/atRZWK5HuqBpRGOE+pM4/oho6a9r3/og7MbcNfZ20UWZ+TmFOzOMsCCWyjho0pX
	 NvWENolYfguIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B6DC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160068738.9912.11434939566535837916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4660ccd01654d0b503759d71c4f0c75e60dfabd7f1d5311dff0ef0faae9baee
Date: Wed, 21 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671600687
