Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B29A23
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DBCEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670675487;
	bh=x6g6Zzw/eOlF1D+e8MGOsTTZF8ACyoI3EhlyvHAKrtM=;
	h=To:Subject:From:Date:From;
	b=nm+yH+SihCMpAq7uZ1osiefEQEK/lqazg/y9I1byoG9K6o3qhg0oxSTlSMKLFmLZN
	 Qsewceg3tJIFeJ+YRTK8uDyWj+2SLfV9p520Fr4dvENGc1RzhCcPCttg6jBzRrMkPw
	 tVbt6Zl/lwt2TU3jRypjtsoxiy7c6dvtGfEP44ynDY6FFkvkfp7zM4xjdQgOU6l+fq
	 pEL5Fg2CLS2mxQXZH6E6iXjwRdARqGV/ZzWg5yvTKxkNaWDZjSDL6QmmDLNsO7PaGe
	 iT6TlxHYtJ7J8HCYLacpoWHES9pHTOECgGbzTvW3W9INSo8KMuf3p4PjagGYmmOPY6
	 yUAgakHcBIAyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9DEC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167067548738.1731.17119056696447668649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d2bc985518d8da24e09a711e149a6851bb7e336ff10461c748e060fb0a3357
Date: Sat, 10 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670675487
