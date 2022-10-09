Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE93187C
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 677F7C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665319853;
	bh=snEyr5rHk019N2+TeZLUuHvubMa3ms1lCFKezMBETdI=;
	h=To:Subject:From:Date:From;
	b=pnggYLKYgG1d+SctUA6mE26XtVfMl+xQW+Emt+1K8F6uLDk6L5vVQmXvTG+smFgo6
	 21VxwYnLaHUdZxddXEloqvfAUFaIpSLMWsk5Fw5nxUKSTXy48nAvFVnkSK4gFEKpEp
	 kFxJGTub8g6ZPSRnrtForGts2/VNMNvz2v4V1y9jdxY7shEkfqU7teBsEdVCkSXPNr
	 dyho0e9FSmg4Pc+kWojtlRPt2q/Bh6aXWVvvb/HfwVuXzWw0n/CWlqNLQhhhGikEzQ
	 sfNFetSQ8H5/XaEDnyfi2/0bUdTTjZ6FrsZiu4mnXR3rkJwQUQ2FMgHwV+wO0oRboR
	 Nyw5XZzohjH1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514FBC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166531985332.5359.13442641296117817635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb27bd443a5a1d5273fc6ff84af6855621bbc355260dd9381560114dfb90905
Date: Sun, 09 Oct 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665319853
