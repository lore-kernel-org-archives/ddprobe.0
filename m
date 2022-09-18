Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC347F3
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72053C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663502453;
	bh=mQg/CpG5WhMldSFGfrZr964I1FeF9HcAAf8nDALBsu0=;
	h=To:Subject:From:Date:From;
	b=FqYSNsqV+sdzVnFWNVzvbYqTm6dJl7pnG+4WSB7yronjepHRDK5y5jQnnRFRNE6o9
	 Jg9KAyEaPlXNF0i2bO5z58ky/S63EnlBU7QA43KUqqLvuKfnjYSkbG0pv1Zv7tjL2s
	 tQv+uUOcHG3xhcjaAkW2P+6xxDjbv1Kd83P8D1d3S64oEnFw0iyjjcTXdzIMnhofEc
	 i8thO/hmpee3B6l1tWIA+EwrNvXzKvYGJ3/s6J1s585Dx1RkjY7BUVj1TRCSu6FJr3
	 UgIeiUmNICi1E562Q3fLwRDJmnf/CqqJymkGyHS2xnHEPKBV6uUBGaHYdzhXdZE/vu
	 ovWzA4iy81SzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557E1C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166350245334.12877.1076687107626738102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f0909a3fe40cd8e7b1307e23c1d4a2a8c327a4f9d8fccd85117df48fd1a512
Date: Sun, 18 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663502453
