Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6F73C6A9
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFE6tutB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D56C433C9
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699657096;
	bh=541ppuplfVeVr7+uzuOCpYlELxhGFXtFefkUmOYycq4=;
	h=To:Subject:From:Date:From;
	b=NFE6tutBw+7Ci1tynVTNCQQwrxD0xhWMKq2d/a3r8y0V9FCMfv0Rrz7OryO3S3MhL
	 nFme2RaxB12er7veqgrfx5XWjsp6iDrY53OncrpZEL1FGoUBxuFNHefhxXsAlLbRax
	 qcYSwyncrDu3GSeVuX158nliX8VMxTVwPU3TtyedDIT4t+KQV1P4QWmLFGLhD44SGO
	 AWXQSk+/2icOzrtj1IaKKUBCLc5OpC7kX9lzbkUvt8UomLEt8i2XKAdEtDrYLdwURK
	 fP8N4Lp1KyZJ7uNsBXBHvIT4s8U6BYhsw4wkiaJK8lzsDuZjzidm6VaekvAizugApM
	 aYjvXn1Pts7vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600E5C4167D
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169965709638.4086.18440980937318799909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d364c42f8f070c8f6851427e99cc8daef0dc0d4208428b8b2dd0b8534e8ffe4b
Date: Fri, 10 Nov 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699657096
