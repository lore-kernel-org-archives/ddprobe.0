Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE008F6B
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7240C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672781487;
	bh=XTmzE13NJz45kkdDiuYwV1Kd0Wsj+tuoG4NBV85uDNQ=;
	h=To:Subject:From:Date:From;
	b=qK4NSbHBB9g2AxdnE91MpqwnDiYzIgEX2UAh1/9NoxzS/wmIyqYuJRbJ/COk33MU9
	 vM0SHqS5tyt2TIqmFhxcrYGoMTSQccNiQsbSWcyhPGZd36EHgCa1HxHBSxszHTutdT
	 ERbwdS8Q9nzPuSj5pbpnxyLAt71GxSqjTyp6r2Ar4Z1FkRrnRCUWgqXPt++fDf/xB1
	 ezO7CO/kdqcgGN/TTHWVPQpkN5BWYgRQnxSaRHsd+2u2a3tLtmUCJKfSNjWsSgglX5
	 B7pTqNPadr2O7rpUmskHyCTPzvct2VsozlwTM1IlE56Nuz0rNxBkxvLUlkn2/hNHD1
	 Re5jnNdeZY1ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7979FC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278148747.28394.16265891791760975922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a78ab9a145ce51c4e25c970315d55cd7d25eda347bcf3e1653832a67761ca91
Date: Tue, 03 Jan 2023 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672781487
