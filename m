Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14C3179A9
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rN56tGSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7774AC433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702542496;
	bh=x+UL8r+GI8fB0T53ZFjiEaS2bgnWkpusEocSxLpCdd0=;
	h=To:Subject:From:Date:From;
	b=rN56tGSMiviiJTqgpLURWTaI/KS8neTqXcue8ME/za/ZXyKHM4i1ueup5KAxqc+57
	 WRLyjLjJS0Z+uWfnfMe7Xb/PqgP9jH8SljNpUtzMJ8muF5K/AaBdVLBqv3HNgAzZMv
	 Dm6V7I6WOqBEzUsiBEwIWBKGbnNFdSd8On3Iq2jqm+BdY2phGATz2hKmIAPTmLT0v3
	 ely25EU3ntDLDGsqqb14QWi6FBoVMh5bl1sFYVJd31s9dCgarl747ifebjCcb2zQXV
	 VRnTBvJJQkrg7EemKakyK7KosgGeXVsW/n2VgpwEeD0/ziWJrzA14TTilR3NLu/blF
	 rc6cTikmc7apg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7DBC4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170254249636.17306.15098659744135317195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc4b0a9e9053cfce67206e232ae27584eecda71e669648a8c019ad69339eb00
Date: Thu, 14 Dec 2023 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702542496
