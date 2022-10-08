Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0029A20
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69641C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665219653;
	bh=d3LqccBop6SDk0PGCot/B7KOi0QlTEqlHRm7S0AXTY8=;
	h=To:Subject:From:Date:From;
	b=ok1o0sZk0iLoRMJ5g0VoH4LD17b7iAu5/VVxuIvT4vgJ/WuNjMuj0AvAxoKUbhRBo
	 dlVU//hcq7PVc3N1QwbBrxxfsanMb0mMWLXiyMVDuODx7vukqpl+mdLlV8czHrb1K+
	 /ivCp83JJ5ZY2ldvJu6Yc8bi3U3pwg+8UWO9RhX0h9oDqSUaqZiiUXqOTHYaDXFfY8
	 vdVSIu2qhBRgbb4D29iw7xe7fE4v/rv2HgCsyJO4D5m5laCsibuHahF1CEeiUP778Y
	 yKk25DE/iAw6A2Wut8PXLXPxiaf6kR+q0yFPrngGOKfBmuU01LTscjqJ7LnI05XvGG
	 V9XX1CIHPXhyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC5FC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166521965331.12985.11987067088519063668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0fbc90171a7759223ea7ed007e32feff16db5f473b6d80cc46171b8bd0c2ba
Date: Sat, 08 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665219653
