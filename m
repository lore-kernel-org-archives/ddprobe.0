Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF560654
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 720C9C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665038453;
	bh=+vIvmHVETICt0das21YQiFB9Qixtj/pU5PsLRTDoxFQ=;
	h=To:Subject:From:Date:From;
	b=WGETWuK2QNX3csx50vlnxxHKF8nngrA04tsTbDSYYMcAJ+WjzSJR30dhnjKXT9id/
	 idY6yODnGshmT3AdfPwvL+BIoYUcDMCHoJJoO9eVfvGwfb/5zjAzu84f6MtsvZ1MMe
	 e5d8Vubk+VT8Zh55sYBqnI8SDaONzw7ElK/T/mlAU45OGPBgk0LT3HVwZ3klKzkblj
	 hu/jLw6IFwt48ddZrTHdnmcSg29axATpd2NrHDp9cgPiBEGQrjlpINNYriGfokgPPA
	 bD45O8krknbNvYkRKUUjSDYhyvpaeQ2dBYiXQLUmquiUGwuKsvnHg+4S3VanN4eTCS
	 SZB2gdCvV2L7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56659C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166503845331.28855.10264535827176632007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0155132cf351d2cdbefb4ca00b31f035488b202bc911a3dba1aa1bc8b026a9
Date: Thu, 06 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665038453
