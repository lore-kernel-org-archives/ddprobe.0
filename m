Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA47BA40
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B70BC433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662790253;
	bh=I7P0Yj8K6M0NaNCgpmWRQjeRU25UEPQBVwn5VXyMdxI=;
	h=To:Subject:From:Date:From;
	b=A7in6v+BI3SJU1IIxAZYvDeQDKzArnsbBN8vvl4j4+5IzFmadFcdN2emjkEisJJQr
	 N5lLefT1ektqMSvahPuZOVT+GBdFKTAQ5JpPCoGI9lg7UuiEgyyO8S4OmLmorjsZax
	 /grmqb4mZL9lcvYGfr/wgpxO/bHA0+v6KY9nPZYdDbxIbSR3XEUXKWkmGyzxYhzHFR
	 J/PUf1HSX+WnKo4b/79Kpz5aIffHuvFXVaVFGWiEZAMK4UmEq0G9THfobuKJmQ4LvQ
	 R1MyJqtAfwtXZk+PVJISNQBpHW0sZJ7KoVlKXm4N5TOw4Gv3IN1//AKnD7Cc84EXHp
	 X+YJouvY36YDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF23ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166279025333.4899.16281924618798781847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74478917daf6d20451e7532d28d4918b1424ac08e8931927f0d1531ce697689b
Date: Sat, 10 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662790253
