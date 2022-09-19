Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2EDEA2C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC79C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663564853;
	bh=ZP9SS85MD8zwxaV9WXwcteLyaeI4A71sfqnsaAXPPgM=;
	h=To:Subject:From:Date:From;
	b=i+UIw02zItOC/7Hq6vZl69lBmRU8R6XOSt2Wkk15wkysB1SKNS5eGMDfoL/yL8V3Q
	 hcILMeYN6J5XcLVdX4se8sc0VRlJSNwMhLcmgFYI2wBsXzYEtXRWxJB25kCMYzlWbw
	 W/Eb/v5hGx+1LSlbBNOLpIuXHCtysfq8iRUfXtPmAj8r44RHJtzEOCWSbDyUtHoxOw
	 F0KwS2C1P1AtZHdp5rwRr8XLqEVIal02Y7eNAJnymTLEziEXofXsr9tzJ2fCu5lYga
	 nfuUhTKheGiCAC4wr5Es1OSqUZSfnIvV2KnvraOTIpGxA6Taj504SRBJhuSeyLulx+
	 LyH6EDd7GYPHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54985ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166356485333.18429.6957748332658495405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67817e4908257dccd071741504ecd8262d73d9f6ed730ef4aa30d02b17724ccd
Date: Mon, 19 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663564853
