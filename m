Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9EA36E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CAD8C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671931287;
	bh=/eJrk8hKuxrnaFCAwbNQaq6L7t1ZL8qBhaaPKsfH7IY=;
	h=To:Subject:From:Date:From;
	b=qHIsclZZUVCF8UZO4S1J2bZFHySWbdwcQ2JD9pe3B0Om4zyJ41ckBVj6YrWJVvmNe
	 nCd7ga9kwWB3+olql9E2W7o8MNHShyfxZgWJ1fJW30T5yW1Mx7WAUwXhx04W7ZXWDx
	 6AHvmD+fpG57tRutgxBYfRrg/yH1jkYuF5x+jHziF9l4tMt9XPtVazHqm4Ma1328EN
	 JGFZ83ihfe/OanNcPrLEysIke/r+jf5MyR2xAPpkI6RfIoxN6U6HlBhZ5O9ogy8b86
	 JIGp8HkQ3+LKLtkOrRZozLdAVd94W7XUvm81eLLLX8T1XN03BAQn3es+kSE8Ae1Uu5
	 F4Z3Pc6Dozg/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FB63C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193128742.8324.3660171881983021324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba63580606db7dcafeafdd5b8b9126315794020d36974954ccd7d3d81984967
Date: Sun, 25 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671931287
