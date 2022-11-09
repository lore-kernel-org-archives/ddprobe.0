Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08871361
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C9D2C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667968254;
	bh=MMnOa9vagAIoEMKaPbKbohVHIh8TylHP7HaZ7NwUkII=;
	h=To:Subject:From:Date:From;
	b=pFGDFidUu7hEI3889XheByu/a08Uqx+/kXEX2yVjPbNlb+72AwSHKSFLI5FtQsXJq
	 Wr8WhU5CFMDxdVyhXJYwYDbxCfdhJAa808dTrlXAl/jRyUvk5oem5Y4QELRnnm0Ai6
	 FZwyiYBsuIA5sRg1MGO14qi5Y0Kgph92G/ntk6YGdoG2zTBbseBwl39UmNHJXbNZmE
	 Plzr+dZpKlNtpsU3i96lZ1NyvIiKKdZ/VT6VjH5bfZUpyotHEHT4tI8/O8xHneWCj2
	 9iES9StYk1EQa4mEtKR2M8kL896b41I7J7Sjis88ibxSSUwC6Z/jzGavD8GQ9YuQfB
	 Z+Nslf77EMSsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54692C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166796825433.28630.9851164451492883898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c602ddc37ac2bc45c23dd3b5ffbf30584412c40281c23a7c3149fcc9b79a3915
Date: Wed, 09 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667968254
