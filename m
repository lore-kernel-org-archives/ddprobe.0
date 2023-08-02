Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C812DF62
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 23:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B0AC433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 23:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691020328;
	bh=GaKgdRKJb2FIP7UmRuCHR/nE+PHAfuO52NtNl/HfbnE=;
	h=To:Subject:From:Date:From;
	b=RD1x+KxA8ZFQp4q512xMgaDOYcw1AewGe3TJVkmMzNrLmyvOhPfTfjB9iFCdMNuXN
	 7EWwX3lHcd7OM9ftEkuBpF2MVPM4+LvcctlAd/4iBLKBSOipZxpWilmnb4J3HJ7Bf7
	 JNrXXRxhS9iny0c3MYOGyyS5Y/bsCKaqZvCDvq51zt+c0RVil6RjDZ5P02JQaBXH0N
	 E2UtoMuG4Fl63oacg5LrvcU4BGkjC0MzjSRvPAiODlM/g2bzNaHmrpMtfBxLUWq1FX
	 vjQoGM0S8wnsRAoxZlLLBUkrpxy1ZbFsy2Xr4j2jt3IF5ny8v1uGtrC9o4sq9LerPO
	 MbScIRrsg3f1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD549C00528
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 23:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169102032869.2945.18306238538573546651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9119fa59a2dacc2ffc7bb22e783242889c433e4ee1f2aca50ffb8b391ec5f91f
Date: Wed, 02 Aug 2023 23:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691020328
