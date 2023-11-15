Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9DB2836D
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovBfmxre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8528DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700068696;
	bh=ubZQfdXpjv+lIlYslSLYMV63rwaF3n4QTO7n5xySd44=;
	h=To:Subject:From:Date:From;
	b=ovBfmxreyEUG1f0LWhgCuMVQyRY9prAS8z5PE72DQSAlsr3I48E2Ew3PH2oljhh+s
	 rqDcTOVQ/vwHbpx4dUGuJquqpHNU0K7vRXl3hRyQYKTE51rHLOOaH+YDKEFIhm2CHW
	 NDEWXfAtvaxzhjSJsJ4ZU5oX+jdwBIJ7knN/kBt7HnZUYjGeQBIl2i6sv1xB9P33SK
	 xzaxVxxK9uBQpi4Hm7EoridRjEypGNaggGr0Z2ZScyFyKVndTWKYMHUU7jiqMoj09M
	 Aocd1OLgdNet+fH5jVQxh/tDLyPmnaqS3YSasIx9RXzv+hVVnwhVPUx/tgwT0ka71b
	 yX74n6XnxGSuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679B8C072A2
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170006869641.13522.5256295082224403192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b393c86dced744c12c6336fd71517276e3a92a94e3785c9232036439ac87ffe6
Date: Wed, 15 Nov 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700068696
