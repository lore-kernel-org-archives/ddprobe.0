Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22327F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8B3C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672796487;
	bh=cafMt5uxQjjzcJHmCb8+Q5RqXmllkOxD3sBRBe2cNmI=;
	h=To:Subject:From:Date:From;
	b=VPwEkHtOpI3k/hDRdXkaPGSUUpPnN8XGzFEImml6KV0LnsacfVIV+a+c9nHqTkms1
	 q/Sz3+b3ZnkDxzZXJYniIDAFDC432wpxtk66gUd8vP/bhWzH/vksyDUHVF/1BZRfAv
	 fkxQXVPHoidOU6jTTNYEa3/An3ukKut5kLu1esnBwMd8xHtwI7K+gjwIZ9VC61IbNv
	 dle6tqDKAH8kTzHI3MmjowGneCOOxhhXyNatnMs7wgoEX6m3lmS9K0JCW8zqkY9dzu
	 jgEvaGxs5LIFzI03rO5tvOmdfm+65wBv36Owrc7D2fxI50Z/ryCCtiAmyfG5jfSQwt
	 HllcJW4EhZvHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679B5C4708E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167279648741.19218.12344152811471974412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ed0236b16e4bbe92d9b0f038b375a2aef4b672f86a5aca508ad8f3029b4f9c
Date: Wed, 04 Jan 2023 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672796487
