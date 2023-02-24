Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1698EBA32
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 21:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1354C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 21:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677275105;
	bh=H9NW+TgoJ2sOuv7Q4dVSR7cuKn0ACtuof2c8T9oiWmQ=;
	h=To:Subject:From:Date:From;
	b=K7r1HeHKbJQGdLkvMT5ADEIpDq1A4zHAIEfayrTHJpTDgOFR8Z++mwbHhFrKtXVPP
	 opsHMlv4S+LBMi78d0OqGvBrZwMllCgdvd00lP8C4FDwm7Q4tsvnvXG8tMiUvIGk+v
	 EjLutAyu16AaKu/OZG8f7Tx2GCZu25Le6wgq42JQ+3v48kXDEpF4o6Kv+YzyOpQpFl
	 O1j7godDNJS+kxuBX71FOnu9RLsJSyecpT3nk4iOmqTevDFaXi0wLXfWKpYDjRAkwS
	 +7KMGjzOBaXmhOIhXSR/SbfnHfLNFIm6ZJkqXBTRsuna/pK8kil10QkTjKYtmzniG2
	 fIEn0eLOTfSNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8784C64ED8
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 21:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167727510580.29323.4061144587929093084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682c05213c1754a574c253e2461778649f1bb9fbeac8e2dc305d7c2ed1d4765b
Date: Fri, 24 Feb 2023 21:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677275105
