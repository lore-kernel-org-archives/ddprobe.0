Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED66EAD21
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95866C433F0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672788087;
	bh=2cSCx6DlfAz5vHaaWtZ72+Cat+wXoeqUfnx9lJ4aJ9s=;
	h=To:Subject:From:Date:From;
	b=OdT0ZdSv0QJJ1gLGXM6t4IETETTaWJGhhXwxQURydqIZL8m9EFa9p8H6aDdKfFhes
	 2VMEaR1uDDt7yMtpVM2Ybf81Us/sM3nWNFuFPXxUSOEb9xJAD+F3icrNs3PBP6b8ny
	 /AzUf+AgkwCMfJw4Hyb8i62NAAKFm0ignMZMVKBdQUzq+QRtPDU+p4O/3VaKD2LtZd
	 VxL+CdtKYbeOqjaEuausWoVhF/vYErXzK7UIZUe4yXcS/HrB1lsjedaJoNmF9ej4cc
	 WDqfVxM/a/CNwM1p57L97mAaEaUaU5afTcieQuTO5qCX1dlL2fEZ6WKL/TfgASepUD
	 UlKQ8itBFgzHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72513C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278808744.20728.6539335794080256621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec7a52d96eafe575811a51f33957634b370d85b8a7df8736525a1825e95e168
Date: Tue, 03 Jan 2023 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672788087
