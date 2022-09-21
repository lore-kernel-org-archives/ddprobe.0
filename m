Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06D31C05
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE95C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663741253;
	bh=pAGY3CoReQJoONn5IVDiXkFiaTXRIPnIz0+pUIkZdFk=;
	h=To:Subject:From:Date:From;
	b=C12gqphR/prxDin269fHKPB4fqzX35EsedZQTAD3JpEOcfowAq8p0LluwVGpMHYg8
	 P6oxUbhWxzhhBWPRVsBXKQP2gXe1DimI+JtRysjsVUXsTkdNSTFQlLn4RvO0MwtvuZ
	 p63LJ3MElIJztlBRKuyKahwBzCZLf+brbg8wTdC6YbTjiiiA3NVRANVaNzdovueVfe
	 NumpJbmGRuGKHdTP1yJBBEvuqOcFaHg0pjfY6H7BN/vHKi+uGd587c/i2wuwiicn3z
	 x85boIb+56khdaDhMl68LWkLrDBUH3wNmDMaLvn18aPvg2FNw7A47clSVQMabtf0py
	 wd0Sy7Z9pXiOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EF6C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166374125333.31321.8840386712349435345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2242ab03c9ae1af52faccbc59fcd777d2c2e876cb412b8125a86a1ff63104c06
Date: Wed, 21 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663741253
