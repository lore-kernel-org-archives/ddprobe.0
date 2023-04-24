Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF8863C5
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 22:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC4D3C433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 22:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682373786;
	bh=M++YwrLDiezdS7g4Epy0jXbzMFVGNyadndlu7kKTS80=;
	h=To:Subject:From:Date:From;
	b=bgkEQO5tmcIBtj2s17285F69/fyugcVBMmHr6TCiQ4CpmNB/MWdz1MS18UJRclgz+
	 LlE323zTN4hW6AXE0aNCfkKJhrGgo6LlrmGvFdwIV8q7M5FdFOCST1IV5mbFY9cRXl
	 dhKinVimRUgVcLVsmuNE77GDEDedk22ac/IZ9/N4GDgcfeefNZM/rAcRpzVx7X/qGA
	 iI4eOOt7jvQ3bHsB8MvchKnD0+G2ioqQWSp2+HBaFTdwI7RTg/5kBZyo0FlhItJg7J
	 9AB/Omsuse/219L+/FT40g1oMtrGh78u94XzqlM9xSrzUUxzSB2O8RqD0q5cqfhID+
	 X88aV+Tn+toeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F6BC7618E
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 22:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168237378580.3466.13109121206589742918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 028fa6c946cfb75045c99f71a0ac2d0f393866ef9674085108c67c9f4406dd59
Date: Mon, 24 Apr 2023 22:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682373785
