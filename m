Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284FF5392
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 13:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE97BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 13:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677073925;
	bh=IpR8kZ0qkxbS8X8p5lMc/7cJ7/OVDHirwrClGvQigCw=;
	h=To:Subject:From:Date:From;
	b=lZxL0+9oNY0esXktVu7lVpD/+63Whq302dGuRVZWtaeghZioTarnEl4zSd3R9RMeL
	 xgM2HnmPr4CcWLGnehwWGzLIpV95YJhzXy7maR6lCkDZYTbg6N4xP+upLtOleYcMTs
	 sngY4PhXfMu25K/DkBIWWStRYae3UWDNUXZX/q8hQB8lpLEABX/WX95xOJmwfwN+VV
	 31abXdIoP/uofTa2zVTDFtmBCPtQqzrZ1TM+WVcNiQ926J7kAfn+0WOiMnR0s83339
	 K66GCu1Iee2Uw7fcM7oGNfaCMCCI45q7XmLJMcG07mNJYDlMFXNvXOKbYRcTopbLYF
	 yPGX5USSBmWAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE11C636D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 13:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167707392577.28602.11665672534212074794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5f377a91e0485b24be8b4bf8e331d01e1f69140107944e3e406e92672f0397
Date: Wed, 22 Feb 2023 13:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677073925
