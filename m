Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68233641
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 06:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE329C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 06:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676701506;
	bh=tXapY4GZvqQ47qgdGPuO4iyCIa6eIVXrdJDRspyie7Y=;
	h=To:Subject:From:Date:From;
	b=qv50/eGM+Y6J5Ng4wLKurglb29ocJWu3AZAMZP3i20wHmcCskv5geB5WnbX2qmbsT
	 qIPodwP7MRcorHxv2PPJ5F6jgh0QB6D9ghe/eaM6+TuVyCShM2i9/zMk60eMSj0EdM
	 2YeGPqsoMQHW/JIEquvf82l0BDv1CInfZw9xu7+GVWbgGPc+hHofGDF6aDPv6v4iwz
	 HXunCcd+I1f9ru6PY/tDHiNYcOrBrHhI/jmBCygki03ZgNaU/rSvlC4cGIDkhFVZ4F
	 hZqbHjUtG1eXM8M+uKKQLTOtv/ZylEJeRXxJP5r/KQFdNev5TcuAPKy7Pivff1tAS3
	 oGhR1+YL82xjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF293C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 06:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167670150581.13845.10902921318169300911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e620783d6afdb5c1f891e27361a4f893f96545b853c81c780082d60bfcf9ff72
Date: Sat, 18 Feb 2023 06:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676701505
