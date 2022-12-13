Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA312563
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83083C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670949687;
	bh=m6dVECl5dTtwdCcUVTMKOAQJ7fuuamE3/dJdjdr41gA=;
	h=To:Subject:From:Date:From;
	b=gCsEAAzRQfPl2gcptRo7GZiagbeXx2oxWp3x8nY+mkt0BbhxcA2DJI++4efOaVzWy
	 2ED7HKZRVz3mxPyfJIO/CB41A6s2jHbrg+kw/xFiisggE8ZuzXIFofAxabnPLkZoSR
	 a8gb0rypHW3mGUxnYBBdx4iaX5v4lO+Ecmij+B4uqefPRxCqgOq2dYC+A1B3ZT/FTg
	 lc5FMJEqjgmGQAzDeTapVlaYALoNNnfzVq2id6ZBri6/2vICUitgwdxwMhFS7035nG
	 qMTL2T2aqZx29w2kkf/3i/SvaRQcEw5iPlYWUczJvCvnY95/Yadohyj4hd5914tjrd
	 IUXIlrLOoSd2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C59C4167B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167094968738.4948.13162919505221554703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffe1357935032d529aaeab9aca6de9a6bd89f0c64ae254161c83613216fed052
Date: Tue, 13 Dec 2022 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670949687
