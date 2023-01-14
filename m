Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB932F51
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 890B8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673697687;
	bh=z3YJKLH/qaMIg3LBVFH+HCUZ+kW/CTO3sWRzUA7hM+c=;
	h=To:Subject:From:Date:From;
	b=UCrT77Jn5E3P+XbsuY7ezcf1bZwlUY9AWk9ttzaf1OYFeQ2wdxNXQnHMoBbS8tuP8
	 3nOeItUGq7i35KLpgqy2ZqWWq11OqYkqxHgANvaoLKt2utL7dg3VOcjjWTz+vb19na
	 80EI61mnUJsb7umxxF0n07WLvCqVTnITZZXUmRt+9GB+512ZQdZbqWRjUabTRCdVue
	 X6GwvSLLmbBwPVCdvtB71O1TDsaOj6tbwY6ZcuJxZz1k1lg/ordCztMF4MofcsMZ6X
	 cwF2yg+hbdgpaP2Y9qvnf1+wJbvPiNOK37utCAfvaCJvFi4Kobw0r/HSfMPN2EkXBn
	 +MMREAxTmJbHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68364C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167369768739.15611.2767655505305742011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6307c89ba83bae990dfa0abf0891d59e7dd3a87fc27aad61213e42b35806a0
Date: Sat, 14 Jan 2023 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673697687
