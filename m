Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A9B1365
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 02:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA3C8C433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 02:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683339486;
	bh=l/vwRMnSPfoFvwrOjCQMpA4HXHWGxKUoocxt0VsKbHI=;
	h=To:Subject:From:Date:From;
	b=MCXIKhL3u9MHk0OqhuT8Lh1Mp9uCasZfbhTzrIivbMeIK49jg4czI/gn0kM73rTjL
	 Q+BXIUEokiKEAHkNzXUqYtexIMUHLCVzq+24AXsaZsEpMivZUrZ73mKanJJgqst3iH
	 Sh9ePHeYTDrSnBAyA3i8fUctxNXjbQSXwVM+MlAK6l+wfqxh5PIQO0EsZcwPG1QB/n
	 Hto6lzXHbNIOopBVxD+szuJxRwcHIMsb7DjPPQOTknhEoPbqI4I5iLYwxm6Fw53cMX
	 Z9Vv51dTH1/CZoS+y/ZdFNaxYm4Nxt7VLyI+Z8yoCGTCXZusIY5j9nMC2vTtb3aUNX
	 Kpfd6UTIiAKaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DCDC77B7C
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 02:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168333948578.15571.12622181618098007460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c33a7079b89202c94d8a505ef240728327bf7ba482cd4b93f27f3750a5ab8f6
Date: Sat, 06 May 2023 02:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683339485
