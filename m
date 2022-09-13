Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67097B
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A253C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663051253;
	bh=K4N1O1KdFGHRh50qIRo7gkla7Bhoct/ttfT73mk/ba4=;
	h=To:Subject:From:Date:From;
	b=OgKxZXrJ/ajzczRSLXTYdFOfTgMaRO/tOIlFkQAMZ72bKhdbGnhrfLNzIn+7leHSZ
	 B/ZlAhmzOzoJ2Secq/mmoce6GFLdleDETBK65tcEEAoCGvjXnGDTsepb/VsgA1P0FB
	 4Xusil8isklAF5eSyofmfpHJ6xpcZRatMV3/8WcpWTLFN762YHSqzUzvH35/NW2xOg
	 POydsHTQm2vZ8a5lrEV+saxLyArRHZ6/qFCL6TMEB64GJdqYkBCuCrEEB2gLJpCEWw
	 IFYPdvWHXfckPV8a/l3IYvRD0JaoOTe49PAh7Hdbrg9xcnJhEXHlrw9Jh/qMmgcYlP
	 S/zKto9JvPf6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E81DC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166305125331.24090.15393176838034601586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022dfc9638fe12f38624a08c149f3c042bc7879ce97f9c93313e738e1ce07ba4
Date: Tue, 13 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663051253
