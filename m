Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADAD1868
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EA0BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670630487;
	bh=SHhQAZSUeVVW/PdjcMF7GruVsIakZ0GU/NizgsMWXvI=;
	h=To:Subject:From:Date:From;
	b=TPU6s0luo/rgUMRT7gFbqZd2vq1CnTZjKIW6bORBiwl/kD+5Z2v+v5SuvjtH3KwGp
	 qyzA1hhl9yAld3h4yb2yTnl8Bv/E+bOSOTvMkgMUVzxrAYsFyKbP2X+l3y/4C6HY/m
	 F/Jq3jxSO/9TZz2Kw5eoOETQ/pxXoltwHKtN/YdF2LgFig6Hbgft3ausMevw9KASc0
	 YfccOMUG0UC67MVmxpLdhfW87cnZlz/mOw3/0aCJ2rRacKYsaBuL+oVe8mXH+w5duD
	 ZcjHt8YwdUTcr4jk0GO0GYQAm8odtEOKeT772/a8qDc8Gw0Z51fH/Kk97d9FeutMl2
	 A6jQNXA/fbdwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72538C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063048745.18247.4664794846683669863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb59900e8233bdbcb881e9678f97cca77dbc585bcee0f70d67ba4a07c4b49d4
Date: Sat, 10 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670630487
