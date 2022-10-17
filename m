Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF18A2572
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A620C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666020053;
	bh=sCwtF7ghLnIfg2ZBWGH6GGcEP+nxj9LDN/VqWk5j84E=;
	h=To:Subject:From:Date:From;
	b=Y/utforg4UIN/yIHgDFcj29WXLfXFBLoyU08LXtPYYOJwkKeeS+07tz2tIlyK8MZw
	 9yVqbU4skfcaDgxHV1Pa3EuSP/c34dCOynAYScY9aRRdoMiGhpyqNP3/RPZSuNvjyd
	 bmQuHQyj5UG2mkhlnAM28rbXwlGdlZv0RON96YaVBPAcd/9WCUIOzCyYjOdWurN0aV
	 pqfQLKBnbTMfprwYjadFlCVnpbwDPGPFuVg47hkqk41BGKfzaxzQ6Bafdj3Ywy49BT
	 ie+N8wyt649xe9mmRlxJh76a4lqT6dBVO8rs9FPMRVY0egHoFy2fC2JFrsiv4jW3Uj
	 gm0FJSP+bxdVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A80DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166602005336.15036.12563880819944365250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0cb5156161d20da0e7d0b41a7bfbeb5e4ebd999fbb93c34781ee7fc2915d53c
Date: Mon, 17 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666020053
