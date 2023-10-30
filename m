Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A36FCA72
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6ABTupY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0CEC433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698709096;
	bh=KA0bq/A3viAi9d2sLSDq+NcGfolscWZVYJNrmz2z55s=;
	h=To:Subject:From:Date:From;
	b=O6ABTupYMT8ssiXyK8pnvDqJWZ2l3ZvNX9m6CoJFYhZO4tuvHITZUcXG12sbPinAE
	 gF36SnnU9RKFyY2478UjpXaBIiHf1W+uO6MnDrJeLrlUPPwl/ocZ6yAXbSCsEpqcz6
	 fnO6pemIFenTi7dbcVbW8nqEGOYGFZq4EIKNGHQNZ3OPnCGH/R9iktvqS4f54IBr07
	 MafjLrqPGy9446FfLvyDZnKI5FnCFgmURamaaHAcxUd6t3XDfo8/eBtPpD2huluTh6
	 AJCSsofezRC0p5fN0lXUrldhuQAnLT8n/xjYjv+Ayrwfy2bp7INI6NeRe2+I+SAxIA
	 5bZq82Olbf/4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 764A3C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169870909647.27846.16263615343185096694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6182ef2f53874c11a963e255d33ee67087d73e0f84d53b8f074e3be8c995c737
Date: Mon, 30 Oct 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698709096
