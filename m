Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB603208
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8DCC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672698687;
	bh=D4SgKPNm9R9QM9fVuTVYoR6Ka+/Y9+4PJM4pYodJ9cs=;
	h=To:Subject:From:Date:From;
	b=BAIGnvz1Or7Y0tZnTJ2u+GC6nehpZ9tVaeGZh/rwy7GAKYOU94bXR3lCla8p31KNh
	 qHnl7Qh3YIO9cAx6SiftFL0/Zk+MxIbZfEFhn75Kvp7HPdk9MAamu32KOSMkGWVTBY
	 Kqbpbb3q8FhVQMN91bwT9pGLbzGSftQJI8rbKW28xwyxUxkL11qdb4XFH8yPqkHB6i
	 uUjKuhZMKubPH5AXDDdFVsMfgPBQvAwB40nZkqtEJK5J/fr+OduMSz4MD/P38V1eyV
	 V/2Q9ZDNOdazFHv3H4iQncH2HuQCeWg/Gap4AbHAS3FnMe5/Pfjz3mjcqJXsJcRmCW
	 yJRHmNq974uOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EF8C46467
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269868739.10137.12573085374905587920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ab084c29c66b4a50815aad062326373e62390b8fdbd51f565963eb311ad33b
Date: Mon, 02 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672698687
