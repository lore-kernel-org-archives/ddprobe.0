Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671A47C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 10:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52C9C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 10:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690106528;
	bh=kUC5uYlou/OttmpVuDBMLcy3NgXYcx2P6fOgIXw76zI=;
	h=To:Subject:From:Date:From;
	b=cnoZeEDdT9zMXRx0OXru73S3M2SXwR2L/ZejF+3qnxjfJWLjJD1dWZDKt3zJIBqYO
	 +cBNmk+tFMhsxcBlokrRKmiWz+ZVrV5KxlPy1R7b7Nl9cfPpod+aYLc0Q9jnxQFmc7
	 wkiSGVp+14KGGBlBXUTwnygqmrRyAdb/PC5aQFpz6+o5NiWIit8k/Gf7U2vrmeK7vx
	 Fcs+Lb2zE3fv64ZAq/rH0froaCHfCTniCc0LIIdrNrzSL1VclSwwwHyKTCAbppLfGD
	 gzObd+TVgofrpFeXXMfuhyU18nE6JnkWy7JTc3vYI2VcWmJ+LkBjjAIVwQLp9fVPWQ
	 FZaMUv52qqJOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B113EC001DC
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 10:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169010652871.17155.16337289464596356132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7547dc93a67e5399821441a9181325faedea314e0fb91004e7ee30d5542efdd2
Date: Sun, 23 Jul 2023 10:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690106528
