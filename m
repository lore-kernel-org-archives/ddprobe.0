Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BC3625
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A93FC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661854253;
	bh=LKwVwBLxkm9oMb+MBRCLbCY3S7qeiN7AFrIfi/62sq8=;
	h=To:Subject:From:Date:From;
	b=rHDIIsG82so7c9KGVtfU6Nell8RNAu9h2TX/m0Ou98554B+G2iPeZm8rXikiQqcaY
	 URY+HNCA/awjY4eMG2FAcGMN9XAFAEOlWhZOdwntjWMIBYQzVEEvaYgPqH0rS6+26h
	 I9s+lNae121YnHV6fcpLFwRt8q1+NuuhJS0vOAkeiVrKaQqssgVxmHsHP9ITk/eSIc
	 U0wH6B1nV5YtY8Cr2iv7NKWt2SJ7nXs0COb5WvtKmypa+66vG2WY/Jk4O9FLSKV5jv
	 U2+hktGVC5/pmpy3eCaELMaz7n+/56GcVKGPKTWvqlttz8jIEdWSx8lxabSp+j7ODy
	 JgKTbZabuCCIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66867C0502A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166185425340.17542.5992832140717361842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918ae59bd3c0affa3e16061930c38399a11e8083aaead4566ca18cbed6641b07
Date: Tue, 30 Aug 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661854253
