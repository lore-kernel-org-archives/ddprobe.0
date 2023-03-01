Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E4D10EE
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 09:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC73C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 09:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677661565;
	bh=ZLxmZqMq3lf7EQLc8ipO1ijpeJUTt4OW5B0rA1mjri0=;
	h=To:Subject:From:Date:From;
	b=l8g6b8zh33FRzLL+a+xbmgVi9VtvEdcmPE37hEIo18Nf3MtVFrn1z6Za8iVT2CEKG
	 Kt8j2kOl/hNoAN9HdSx9fvjSFaf/DBPH5f0IYq6imvfW99csUQZLkoQoFXDZ+jg1fa
	 yM5JG+BLysNYqh4bQYoq3UNm5/+kaFEJkkhGRG0Vuvvgwo7wKhsHHl7jOy3yyiDE6F
	 qBrMX3gdGM997kC1PJB5fHik9MXL/JbGoaVXYmNZiwb87yqFPmkJK1v+y2PNGW8jKA
	 XgsXpwgMGMmoFV8XCrhkn790HNyGqds3k/fNMI3HCFhF2nVR++h+W1UJqPvSbpEjlZ
	 rRGsdHHSN6jbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A2AC64ED6
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 09:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167766156572.7207.8094460643803196056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2329c0bdda7c7eae650b504a7a92b3254a92dda626ac57cff5e9eb126d63c10
Date: Wed, 01 Mar 2023 09:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677661565
