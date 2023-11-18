Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C8DD287
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmdjVL7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EB35C433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700282896;
	bh=fYm2d+DPlCS6kaKm7yG6NJc1Qf0/KxTASg7loIPQNck=;
	h=To:Subject:From:Date:From;
	b=SmdjVL7hnmrAq2ssDM+ck2GpytU7MBcMsmenDIL+1D4PXiu0T4WORwpIiFvu9fwlD
	 UmNwAs67X6fxX1jJD6eD/ZwEgIqMo91Cs8hQ8sd5o8D2YaV2X762VZpDYAtid1Va1Y
	 nGSJWv5YdPlJkLR9/+jD4djKBr4KLsHL0jKiqGYlU8JeqeQKCagY4ROpcd1QYxc2W8
	 tky3OmDA1sfarIAbfOVFcuzqCUlqgfhGZmIH9i1Ni/AlJkVV3a3ucKMRaVgiYJW9Yx
	 EjHd09Vj81U+UfsIBDqib7LtlAuHRSkLsOU43uDmomEQ5l/nJG3rvqt9nykV8fOHhC
	 qON7KEV1i/YXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D9A1C47071
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170028289643.6153.10113398868797342664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1765c083f99dd20cbf35d1ec5d9bf94caa7272b9a1b417ee64c6fb5729ea58
Date: Sat, 18 Nov 2023 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700282896
