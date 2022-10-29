Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24B82574
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE3EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667056254;
	bh=l78rbuMeJmA6RtIUrT1cC9x9SWnBsVWcvbwbjNP8nbg=;
	h=To:Subject:From:Date:From;
	b=VAAQC5RDOFzs5c4KW+vEVQuTHQGG8L2/U87VdJf3IqwNhBO5GxclDUyaKKdI9JBzH
	 3lLlUShhEjRACORZyzemjGuBEV185WKSQ5iT5L3IoXCDJqrGi2BGPQ0MPvWu0D4a3U
	 6XkPseoMoeHooV/hcHVtyY1+HeSzGxdPHtUDKK2N9SBbgwGXkHC4PsfJbtpwdvZG1S
	 5lsymuDuzLeE7WZyYHJ4bjYweGlJeUqkIzkSQ3IwTfICxclVLD8K0QPpWBxUr+mYrn
	 ieLbh01pHsF1+ABiqgVAy+ufm2Yi3VHQytJQh9B02VbkbiglPUAOVy8C+alOP4VW5y
	 QGnjSrPvNXkXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533B2C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166705625433.19377.13628885859591051636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ca83c14d3c09f83dd61d33053d7b3e3e670533889de5da1a46f81cc458a631
Date: Sat, 29 Oct 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667056254
