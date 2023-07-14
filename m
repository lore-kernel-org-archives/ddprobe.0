Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519866FC8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 10:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C09C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 10:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689331268;
	bh=BCQBViz1ZFn2AkRGom48fjZnqMHTrzdvPkiOgFONmiM=;
	h=To:Subject:From:Date:From;
	b=Sj5o6MpqWHBgyDtlaZyxCPMVhpTqB7eQQWxDaOkSY4WX1SPzn24JTVEGtsILiFdXb
	 mu4+eogVYRhLd3DX48H4rqMoZ+iiYOium49TZWOrqrx3ezu7wvx9tQWkxDgaq4uzr5
	 jxd4o5ziy+PDYN3kqgoJ6rtgqHCGutYJBuBsZJXl0LZDj6k4/nmKoELEPBBVT4oZkB
	 Dtyf0n8zTxLGIHjfgzuniKcVqWDVnO56BOeow7mF3Z5pZTDo0i4Bwpjc0MIcqVg6mj
	 g4v5+HmOsCndYGoA3KmK5gFQqfvpV/774SAAiBjojMO1CIfIU7LlFF6EeOZUsyh+V/
	 H+QzAhvT3OpxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86A4EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 10:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168933126868.13181.2334518519626481817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08aa1c88dd54a6a2337205eca2cd94edefb2c3deb60ae4872772550e6cfba46
Date: Fri, 14 Jul 2023 10:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689331268
