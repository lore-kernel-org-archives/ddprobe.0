Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED5C4A11
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66F9DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664386853;
	bh=EI4Ikk0tfeABSDd5+kPQDiM8R7ti1siYpj/e0GwpLIs=;
	h=To:Subject:From:Date:From;
	b=HEbKumfNQKCrMXGozNAoSnmHFOfo4KCYwxdB2z7xui3dwXosqcYiUR39F+RnlxAYu
	 PYbODtRDX9OAGQE64YMuxWGPQv0CfxLYKScLcALKDz2Pbuazj56t3p1yeL3xDTtIqB
	 zp/Zs8OIUje8aGFBPdJqL/+sBgvs2YtFwibIjTmr5YSXSiMCR+IPZTSlYSEszKFVaI
	 zepp0QX1flYNrPhzJekk1+G/GDjxpHaSuu0X28h2ZZTpNgdUkBxx8Mun3r+ewSrYH8
	 DF6XM6Bx1glhRhGaQqlXUeuPX+e3CHUad1gRwJuShR8KPkBlAHUfOiReoK0a8oOmT9
	 I81thFxcYiHNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F5CC04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166438685332.31173.14844054568975753081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1901bea5e9930c71bf12ff10b0b158fe33ab654d092b37d8b4a66dcc5593e80
Date: Wed, 28 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664386853
