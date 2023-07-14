Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C6420F4
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 05:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD79C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 05:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689312668;
	bh=FhBF2Fj4Jch8oKnc5xJYZH9sdwAPTymJyVbso8vLuuw=;
	h=To:Subject:From:Date:From;
	b=PWWzv0PjmQzXlHBVRluEdR/Yuw3sPO4BGrK16nOH0HDDJ+v87ET/pDo53lmpPXb16
	 dGj9TW8WMpW5jvIl0s6jFmCNHET3AQUxne58stjBj/t3+nEB9/uJjzTZ8lEZ/+mFi9
	 oU7Dl9BQrBdrN9HdtsGJbpv/O5o07JioxoOC15YrrRom0fQKhioGuaazqCJiBUzdLO
	 soQMvApCoLzu+pMJqwlzt575r/V39aMv1t2Fd2+7XxBv4/1/Jb5lJXIW41jRoX1Egc
	 +Yx9cm1jGVqGFHfuli6mS6KG86RzzYEcHIUMmtcHe8WTbYjsWzU3I1VgULiKfPP/oj
	 GKjA3sGKZGL1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BFAEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 05:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168931266865.12225.10739466657019483314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e26e19b0c4d3946d7c3acf2000a87d80c586491e833aac5a419deaaff6cdc04
Date: Fri, 14 Jul 2023 05:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689312668
