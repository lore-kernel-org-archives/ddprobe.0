Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4200B5390
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQ+BJMRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9926FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704029896;
	bh=Y8k4exdOo2GEzQVo80ox0nHGt4hcMacjV5RzvM6PnJM=;
	h=To:Subject:From:Date:From;
	b=BQ+BJMRGKwOqwSYuoCM+zdzYjAlaQ/w3mhSRORv30kzZyL5k6ujuuVDzzOr12O64x
	 zuozeSGgWv3FhZbXzCVfprj4gu8x8WjGosiEbhgP+Idvoj2GOkFAMLwX+7SCWwCVDr
	 HNuezCrW+eUbQyfFkn8p9vTOh0OG3SYUYk5PQEsc4kSp93lVF5Vw3NiUj11YgH9kNn
	 hh14XukhAuoiRCDixX/t5fBZkvrzDBWlcIy9GewxeXNeldlOs+xPFHpJpTOyKtOfCk
	 sSYGhdaCw4Pg8JaTEyc3M+0d39pkqtLM7wUKXTVGSkpElDrq/WU/AmTZ+iJvcQPO98
	 wIrqQId+Z5nnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79A7DC3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170402989644.5067.17797522321649995722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb16a5a260408204418dbe49189ebd6d9ca2f2ca35799734e78978cd79b588b9
Date: Sun, 31 Dec 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704029896
