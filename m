Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFAF6363
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A878C433D7
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665793253;
	bh=mo7xy1wqsIYN/nQ7PyRtPzndi9N2iiwy17VTKIdjxQg=;
	h=To:Subject:From:Date:From;
	b=Y2nNKI9HEegfYje0zoENarhBvc62uSVBKJxr+hGcDHd1qBScQ8HfcPhhzlVqyu4u3
	 sjTpHhLcpsuGcUAdi9sDq3/te74ORBnHjIGE6Ms9uX5i27qBcB83ExSDt/bjxIppTW
	 jLl7N6q01QYBIq6DTWRUxyfqQ2vFQ7H3wpqinGE3L4fA8ekmYQZv55FcuTz0LwmGOB
	 maPPQEiT4tUSCjx2rek1d7ahwN9J8s3TtE2IjzRNV8/64nyDARiRy8xMAY/ds8IbsM
	 G3gvMW4wsly4/F8pLvHS4LH5W2MMuh05pawg/JxcQlnRgaStHEI7l7ptLeLULDQ02W
	 G8olLhy1jLEFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54101C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579325333.4305.2715293769900657684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea82618a6e1b5b7817dcc9dec843f76795bbe836191a35ff5b82d49ae89433ff
Date: Sat, 15 Oct 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665793253
