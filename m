Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EAD468B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 08:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DA7C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 08:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688460968;
	bh=fjAma04IbCGXf+lQesnH3r5nsDe4NbBM1IU9N9NpSWY=;
	h=To:Subject:From:Date:From;
	b=UgUGKIsOoNAFo6cEa1YFxUfXg9U/BEokS3muhEFIKkW+/7UOlUfIwRtDOllTLCU6D
	 cgytMpx1xryaPTo1aSPztawjA7i1QIsPrX09m6RMB2OlUVaNy2NQUuH0rbX2ixeJ00
	 Tie55JL8g3glFRKXEP2nNAic9ysmRRJ6Kf2NG4yaaJ+Vodo5qkm1ecicRJSNLlKoyw
	 gkgojcdBt/izthHWQJ3Z8rhqsaFrf6BvmaRQM3dYBDNY+u/FCjP88MC6aqDeEKdoj0
	 WnyPifargFZVBgWXmnUg5XO0sVBXTMPeoQ83IUrN730swyieJdXR5SvCQ7c9uxrrp7
	 1wF5TP3QCkTOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEE0EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 08:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168846096869.20225.4050352356053299690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2e73128b28cc710bee610150789a14741eb3854ef15fa663344090a71f75e6
Date: Tue, 04 Jul 2023 08:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688460968
