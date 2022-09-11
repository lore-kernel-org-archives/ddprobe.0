Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6E97F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67EC7C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662936053;
	bh=GWOagQ5TY3QybonifKcO4ijJrLv1gfE0m/Gjr2A0jU4=;
	h=To:Subject:From:Date:From;
	b=A4H0A3raPV5u1eHf7lsD6j2TofJNRDT8I4wWLR10On7CEgBTD+m3FMeBo0UvYk5vI
	 aEZ5sptvB67W+6sU8pUpWmzBeL5CbRtgdP7zgQwhUpNeBL0ZEzHCETrJLKmmGvNI0x
	 +w0Cy9B7zU5szWVbE7IoS8qkjokPN+yRE1cMnr+Ln67NU2tB3mSwqU+aXUmm9JIGdH
	 64VO9WE/ZnPYr8/OmruEsPvGsgnS5lud5WeLOK0Ic3q0oRkIeUyfcMnbLkqsiIe34B
	 Yl5ovQ8jT5xefMUJDuXPrq7armF2jVq2h8O0B0/C8VlSYM6dMYK6Qx3VVDdwYf/7V3
	 CToqN3QWGISww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DF74ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166293605331.15202.10885669180206398473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab83b9f83b9d5f6f8ee0c2f757187d2cc40886ee67ac76939d3ed29548396bec
Date: Sun, 11 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662936053
