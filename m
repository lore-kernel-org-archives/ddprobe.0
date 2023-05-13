Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F0C1875
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 12:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9048C433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 12:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683980885;
	bh=fLLPb6pFkbmKHtGQTCoDEQ5+WvrVwfzedRy3uIRw1JI=;
	h=To:Subject:From:Date:From;
	b=KehtL7Fox+iVGhiJFQ4i9wsqlHhc1YGNN2H1gmW8Pr1vOGCL6mLbH7c6jn6VmtBse
	 DGnN8YmX98ydv0eb++ovIuQxNAdamxglTRNa8szziLhzf6YBlLx3f3UmxV3LROSPlj
	 siVyGuOPBwDgnovP5YSdyyeKSFds+AEl3rvrouG9KQV+z6eChHR2F64WgGxoxC/E15
	 spHl2EIzCKMoC6qz/BTX5QioKWw7X3kDtuROoP3/jY9OvvWGfe+iuc8a+ACzC7nD8B
	 /lziIrpDwCqWe3iO+TbiIcJbWYS7/8xD31RBryK2iptNVSgRZNzHT6/S1DIgZFTh9R
	 6BmlqXWQ3kVHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA6AC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 12:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168398088575.5385.10601251389383930078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64dfa56b432349cff46a2b39185533af939ecc4d4ae64eee08066f69696b6f75
Date: Sat, 13 May 2023 12:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683980885
