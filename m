Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DED4AF92
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utQHSItW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A2DC433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702857496;
	bh=Z0ZlmDcnfFU2p1P/jzCnNPKUHnT7VcaaUWL5dNlOdbI=;
	h=To:Subject:From:Date:From;
	b=utQHSItWWm99z7Exb+dVeq+Uuwlo/1cfhvhUMQlKvRG3E71kphmvSM1f5HhfKeHux
	 vmJg2+//RcjMuc46EfZI8KK92mbjHEMYR2vRJPqL0UHK/qrdXXozVgEGDzrmxYpHXC
	 bvE8fgCqIDVeQk6TDYxtDIJ03v/CiEpV0s6u7bA++PgFOIFNHnnsdqzWTpqUqNnS3p
	 yMdQl9phv8wWfTUzpn/zXyiIP1H8Z44ddsEeA0k0el8Xf1QxJvZI4jE+1/RT2Ad+TG
	 tpVcl5alzo4z6CQcvc6R6iZJX0SA9Iz2KOnLDytazvRp8oJ1zIEtmgx5Q5LDc7OzOw
	 cV++ZjWgsuUFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CE4C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170285749637.23249.13190020439955217469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad3a68d0000955a44f80a1acffd8628a7f0908949c6bb5f501484fe0966473a
Date: Sun, 17 Dec 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702857496
