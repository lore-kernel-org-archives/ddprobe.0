Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF67F7C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F1E8C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662611453;
	bh=esB2oCwO1W/edW1JqptckAPkWp0ADBPIGYHaynWIMkk=;
	h=To:Subject:From:Date:From;
	b=GrwweDflLJoJgIsJtfmz3xymIKgkm1GkG6TETdduaQGRUj+x0+UcgAXkfjmvhXkyy
	 g6/CciT8zv3B6/gSMnrRpph/eExlhZdbtOonUulXILXpMMW9o5fpwc6JaWOUtPwL1f
	 8MgWzZf51QyKITCx4D9iO4z1V0nW+8g0dO1a4wLUgXqlsJ5kEla7+08nWsKH5N97L7
	 Zrfw11j05UEdk7JyqYUwqWYO46Yxl27Lu4uHMggxLYhOpHE2aaKC2s//y4LYKJZAc/
	 h/upjfMckSD9+SxAQi59969yQPzbJ0OtNjRjqPBNXC72eyjHbyrWs1hQsvPMxSjRFB
	 aUV9/D6VqQ9sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532CBECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166261145332.29731.7734403544734354744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a08b0690a21862aab442b2044b0314a3931c8657d69f7d63b583751004e0f7
Date: Thu, 08 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662611453
