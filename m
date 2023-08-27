Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5C9137A
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 13:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C744EC433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 13:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693141448;
	bh=JChOyheKog9ezjhYvcMIYuCEBc9bwoEUy+esO3xyul0=;
	h=To:Subject:From:Date:From;
	b=bN/vZYvtbsCHxFXXpl0b/skrRm7LAxzYXFgjdMX0yOw9aQHALmx+vPLiDPu4j6xWx
	 sDgpuCYUL6t7UI/E3mzlltxTCRPS6jQvOYn2WvYawxYeptj1NDKWxfmibV+1RipJAg
	 dcbZiVYdILqK6nCLpUYtvpJULxvLYqfjr2tJZsekz7PqiClDM4JZT2fJhV47nqTXbT
	 yf9OnJIWWLpqtp1s6xHcQNdWxAlXR/BDKsUdypjrRacq2UxsAiJdvopJys+eHXzi23
	 W8DSx07rYo7KQOM3zzzr2QFCmKsuB0Co2e7Qm4n4yUlMYd2tq563Hc/4e8VzfdOnVU
	 UMfyHadTjzxRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95E1C83F11
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 13:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169314144868.23552.2486890247556759621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d577b7e36cc19da6ea53268573aeb8e1d7c4a314b8cd8fde1e1615af1f9f1d
Date: Sun, 27 Aug 2023 13:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693141448
