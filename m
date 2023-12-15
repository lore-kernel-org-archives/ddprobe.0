Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04973EA64
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jijqc+ly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88AC1C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702658896;
	bh=vUg0l+XqpUxLI7DW/vl9XdjkzoeWnsStLA5zTgtmHQM=;
	h=To:Subject:From:Date:From;
	b=jijqc+lynK89WELIpzFpgHm4YApvWIVAmjHNU9XWgASftD4QEEfm6v04cgtwgV2/z
	 Ufqbtifg0oylNfH9rsL3lkkhHAULxy06GvA9pNAkhHdkx/rLeDOAMGNXzX48drOH97
	 k6YYPOaQ0NPAdFuZiQljf57/20TUQBtwOShNvLZGycUKFu4wbBvPj2xwnYrHIMkt6K
	 mPGFQm4pQsqeGAV0pQHFPzUGI8mQ8SkQnmftnzQfOmWHmKfOGBTrGGI2cpVV8FGLO1
	 es6esKusaOevM63tU/sermT90K4gnBoNH2+OU/SkVKdC8ahoYP9YqCdsK8cHxFFxVI
	 A1SzYaBHC8qWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E0AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170265889642.21685.9230762538550591399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d6cdc68fdf875c7348e4737a3fa73d8a86e3a8f427b1a6d89e521c723b3302
Date: Fri, 15 Dec 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702658896
