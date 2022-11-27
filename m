Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F8B23B8
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71214C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669544454;
	bh=1eRvPPXyRfgegqApHTJ/CiLV70OSTEmjG4za8cMOrus=;
	h=To:Subject:From:Date:From;
	b=r2e5PlofRonnjt1m7SaiCsTweaFmfasDH+2nNuqcgTJrSFPVuv9UA4O20mnNXRFSD
	 9/vmmWwucBRZ9pKRoCiVrlLUDa+0eHO8BPZ0HVDAS5N0RrkF2MO1UuVHneI1meyoAu
	 ZYNoRH3wkGmeFc/eWNFGZgIF1ElWnlxSQNLm56fo/cKowkx4yedjeggWxtM5W65Rcr
	 YI6dpAkZLMLSmDt47KBDLBt8GLtX6M0yp65OSta+jFMDeVkeyAWo1znLZfN/0ZyJcX
	 zfPlNlderMtNU8hjDcoEHOAVsnz/fnbsgmUEQhRqz1jvWfibs5t+uGTTI1UhMtpuGH
	 1dxQhe3a4rv6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51789C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954445431.30053.18217921139919254635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626d2e0fc3a0c6e06a6ad2c6428e6d6701aa29bbe5de7e711d6a7a2f4d74b908
Date: Sun, 27 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669544454
