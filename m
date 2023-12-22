Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC732E648
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuTvT+mv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B7DC433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703274496;
	bh=3yrfy8CEwKkWTM5ISIfhJzsmsNBFP4Xy3+0+r2QkPSQ=;
	h=To:Subject:From:Date:From;
	b=JuTvT+mvt3sJxHHtf2D9xyUkGqXzrnsAd39viVK99FdA93cFljic2calQSIBG6xFC
	 mpkOAUbin56MMPtEoYWjYokuC320rAUEFR2Uwm9U1cwWW8xmKUrj6ylqNwuHd6Q0y0
	 oxsReA3+LFK0RsEwtsUlW4v71sBsGcSlzpqYrG6+kjYG0SQ0U14RNGUuPqbcxGoWAn
	 iSkkHzVA5QPR5q/Ebn2+3YCchaYOE+xeTzxHMYMMSKXmOcsX3CMkRn0SZ7DDZvJUtr
	 6V/esjGwX8F8Ci6PtEg/0SMkvVyIuTbYXWJRhm3vn0EsoSI6jCXnWFzBymN8nVBv4o
	 V2rj2TiXWVj/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7B6C41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170327449637.2309.4519133826241852607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be079ce34b99adee6b6148ec6c52f5cf0b1e2037eee0aadcd8243c2f85d130c
Date: Fri, 22 Dec 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703274496
