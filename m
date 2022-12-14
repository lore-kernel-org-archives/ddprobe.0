Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEABD7C
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89158C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670977287;
	bh=UIwR1QJCQGYSyyuxJQZd+2XDV0UsvdsDSHTUmhB0iVE=;
	h=To:Subject:From:Date:From;
	b=rCA3rvpWNxBvxl8uzM1iOpDvIbo51rlEoKMiRSqlglkvB27fbDbsAedY8D/f4wgbR
	 of0L6b7u32cjNji0t+/xkSlu2Gq6z+jj4QvRKXP3YIG6tTp7yoM7UhbSlTWc7eLeuN
	 bQqa1oEPvMCGUMMwY3APDd5/umKUjswef63z8I0YGDTB4O5GtBHTzWbxXSry4MsE5c
	 At90A2UYTlvTjDUcjJJeRnSQHQiCDNEI62P675V9p1KuOl5T7O4wFqIPF2IOFSaLDf
	 /HxBhqTlLLGZsNYW+Xyib8Kh1O08cK+aT9D8V6KmTCzWzUIMIrzBVQx+YA8c3HAiZt
	 HT7X7KbpXhmDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C4EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167097728740.7842.3632721213630317685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f747e08be7a19fac8f3b2bae391f84c6a789f648b4f1410f998ea53c0e2c706d
Date: Wed, 14 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670977287
