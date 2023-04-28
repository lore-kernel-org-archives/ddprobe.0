Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60971320C
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 20:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04720C433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 20:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682714106;
	bh=I8FbJjKBVD5Ja03Pu5Sbmv1qLR2dgqjywPLc1GtmaNA=;
	h=To:Subject:From:Date:From;
	b=OtdbbHj8lxk2p01RB/zN6pJ0sjBWYFWrPhqcC3TiIyyDK9HgvxQBRve7POOUl+F+6
	 EZbByxTSqWAsnSrLTaRnrzWEkDVIq5sg62FGuffRPxcZaGoXL1WplpMVFZ77Hkly5v
	 4uNr4XLUkyUy0t4oUb92L/b2sxsH3jRVkIQpMYxQkst+YuLXbWCZsA9Eh/kueX8sL/
	 9uxuLOZj9SzVyp/Ge5Q2E5NlroK/+nvbPq+8JS3H5bTC094ir81dc29U127rcRMeVv
	 kicCfnXRcVVXhJumijFk3OrAchYv6FFXi437xNUF1KLh7Rkv3u5NopkwrSYjOOzf4c
	 kZJGeeYRFX/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04A1C77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 20:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168271410583.32188.7306334395553821112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3063ccf828f8b06610e114ce89615eece1472e8d3c031f0ab17d99eb07182f5
Date: Fri, 28 Apr 2023 20:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682714105
