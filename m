Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CDF14883F
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786906834; cv=none; b=Jw679yebK3q3woehb9UkhSmB4Pc6JI2S37hUy+j5XWW7EHrPqfeuEs1MqZM3PileIDGFjc2eHJOyUU2XLpFT4icLBHu8UYGeRbLDpx4pk5ocF6fL05sclDrUsNGH/ZEDeuEqRPxxVsZ8qSTjeu7mcc1E7KprnWCvF1G8C/epCS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786906834; c=relaxed/simple;
	bh=ygLEPVbE5OKD6MjhlSqGTRbI7F8Vc73cypPzlzs+Ehk=;
	h=To:Subject:From:Message-Id:Date; b=b8mp1ApoKR7tNzZwMAAQZzaNsdNsGzNYVthXgbwM7MF1E+Ygh7xsUIkoIBaOHltwONtW8qQgzH4cEeQ9ht9KsUXxvhTA9SzDvxQ9MIHHAev5959BSS7BEBe3XVu6PrQXKNNDCuEfE6qI0VuzVzFPXzs7hUDTlcdT3fbqIW3baWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnlW/K1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnlW/K1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7D0C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786906833;
	bh=ygLEPVbE5OKD6MjhlSqGTRbI7F8Vc73cypPzlzs+Ehk=;
	h=To:Subject:From:Date:From;
	b=BnlW/K1vBnKzyV7sBlTiETzQ+ZA7fAGJoVArQKfPY5Lhuv+CvD/0PiAXh4otBA4O3
	 ihNd80h5mG5BUGcFUVA1WHgH5X+LAZP37mPYlzBgpGM2ZbYsDJxkd6eIzy3mZKeFUG
	 zsiPkr/Ot6mC/wRSI7xB+Tm6qW7rdbzDy6d3AodyHUh29yG3oq7M38F31cH0+JiVl/
	 qfDkSF5ZEaRliJbfzi+KCy8Sfvb1gQOM9H9NONWNA4NFljUNyrUp0FdlMLL2jvhDXp
	 T/gE19lGLeb+ShsEpE9MHkEBg4lzEQmGffBSovBvlnA9AJ+12g/5Epu5/s3vPNZ6km
	 2VbLtgXe+DJ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB37EC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690683369.24739.10460322890997906379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e807af81ca0ea946059b2a71db7e972499435696dcab9b01b3c060c3a3b252b4
Date: Sun, 16 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786906833
