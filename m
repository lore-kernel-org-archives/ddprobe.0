Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E0D10E8
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72412C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664430653;
	bh=OW188zzTpDByzUWjezssaKkbFwKOcaNbnxWnWiHGFjw=;
	h=To:Subject:From:Date:From;
	b=Pt5XUeVfcU9ipN6jfJHNX9Km04vEqRjiygZJjK4v+AMImWBdVzwvsAlQmpJSJfPZI
	 ki6eQ/xyLh+kjBBhEaaRSzbe5peZG35qqEHHwurBzttmqm3Liej5mplYa7dlGHOfzX
	 TH43aT/U+pTvXOTO4eUTl5nsU/Yf4cT2iJruiaanKD7xnXJd35VDA/ovd60iRGNkV0
	 iXnFLngh2tX5Pi4B3FSnlSkPb7wzGIoCrwALqKYjWZEZEa118ynKea07Z38DLmRecj
	 Z+3V2wjzJd/JoT3doUMxqFwuzTCsss727A9XU03EEvAopbl1QZHdgClrIdlLu9pQsE
	 Q4GJ9JgD0+kBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54287C07E9D
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166443065332.23863.16124514868581213512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8ca48a70c2b992058f20e8f0aa4c782c5e51f48f2fa39bed729c9898ab29a9
Date: Thu, 29 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664430653
