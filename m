Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C361C01
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B140C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662846053;
	bh=MhVmwiQEX9rTTljwS1ZfzY+7VIVANROQfIpvPSQyP/w=;
	h=To:Subject:From:Date:From;
	b=HpGEYZnPaoTFxQ0/0EPiXszq4I5bFA1Nuy88L9FKwYMkSz7ixSBCXAdg2121jeinf
	 slNfBD0YJEHRxbX1yJOkZ1rmHkAup3zZHECshmQ+oTJB8zodJMXnFweY0z5p5gro82
	 GTLsKCM0vniQonF1vZemoddk6eMoZGSaeZb2bJLfN3kkgW6H+cfPqzbK8p4VUnJ0mn
	 UmghW/AxMKTOITLB3kH9R2AsdSB9WW5Kf19fNKOuR2UwHw2DhwAXdj5Xm5LUiSsn5M
	 NyS12bGFPpbMV/Imdw8jqwrJrBEsMYTv6F6FZ/+8Yyb/3ZMkXBUT2cug+zYIHS1oB5
	 pWg7FYI2oV8wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED9CC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166284605331.20814.1892762322394492066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dfbc6bc745f25fe38a4a1ecd28547fa17f27bc3ecbe34af63ffc17461968ff0
Date: Sat, 10 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662846053
