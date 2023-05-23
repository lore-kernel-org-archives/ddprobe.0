Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6884A840
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 11:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E99D5C433EF
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 11:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684841585;
	bh=xm0+FrKfA4fKINIzQ98yJFJ56zbcgJFOqLvlfm69K1E=;
	h=To:Subject:From:Date:From;
	b=aJvf1YQiLl1ZBHH0j3r9KWyR0TXKcz1DCdGxuv46di+stlqGXs3ksjuGHKlxxJoeL
	 AjlN62uEG03REuvHt+io90nDE0N0JJ1hqSU6hAFBTVVr/MfSCTpBd+SAoh42whzRX/
	 OW50gLHoEJnIIhfcCWaigVVwrK9mCD6ah2YSoaz9HBpeJOyVARQ69uPA7xt4dH3MnX
	 wlJWBXsCfQWSBKkvyHD7i1I/+bvVbwMZTq+iS5ItkoWHmjRIuGLstBwfCY7m/AJ2Nj
	 Xgcbip605/w7BDse71U8uMXZ1U3xFz4lkhDTe2/SODWGAvH+fIbL8yluw1l/qzbmtr
	 wMUudSLRTBlnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9CDBC7EE26
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 11:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168484158581.12061.2461104008508311520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b804a6655be3a4f952b5bcc19f1e6bc68f1ea2880220b26236b9fd12dc0ab021
Date: Tue, 23 May 2023 11:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684841585
