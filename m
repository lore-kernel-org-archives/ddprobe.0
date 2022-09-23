Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02088B38
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFC6C433D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663909853;
	bh=WWhg08MqwUOIRe78zBLqhN+G0OqsJvK+PGxEarbGJws=;
	h=To:Subject:From:Date:From;
	b=pWrfcGVlWT2PpKOL5w2oennhROGB7VDN0zMumIyP4DwOJeASQ3tIGlZaBaBxRyECT
	 2CUVlabB9gtGIVAkmuqMI9YHDLkCAm2i5vE1tnAhZIqTU1Qxt77aUGpSaDAupluLFs
	 aCHuSdsotzJDI8wi4f9zer7lhwG5pWAWnOgWGge0bV99Na8N9O7kSGI9NtC6q3ZOnk
	 GoFDsPdm5zBx127KXddbd7C58G6bxJzXu7ld+FTbXwiGuYR7P0Nyd/ir6yImde4dLn
	 odrWPjnk6GiYIbNHxT9cJ/OwCISe4dDJ9RUX/O8zoO7SOQuyyrsH2lMOhEmECEjLRs
	 j2BjiWZ0iX59Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC76C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390985331.6222.16113406710225883721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dda6f43eae95898bad3c1fc37d3321bf5ba4969564aa015e3821055f5f3ba29
Date: Fri, 23 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663909853
