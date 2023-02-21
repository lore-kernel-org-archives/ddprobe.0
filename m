Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52070A23
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 02:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09E12C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 02:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676947146;
	bh=hjD75BMOrEDRGT+URt5MIg97ORSCqney1Oas4xRTEBw=;
	h=To:Subject:From:Date:From;
	b=qTCeCu210QSI/dMSq1+lrmTYYBRRkie3JP1wPTBhcP6T7U0a1RnzEal2hr9a0Ng95
	 JnMFhTpl2OUCvFgr0YL+Le74EcXpa36yJ1NwlNAEtjj5AWWtJD1aW3fKN081ysRdV3
	 Xtt48P9z5FmkDyhFOj9aHQfULi4G4DgORT0OtZ/ieGsYdZXi/xp7fcJdEz2mkamh/M
	 UhI0OHw7KWWA664lK97BFPRVZNTcPUkOVHqHeMj1Ah6D+Nb2KTmuaPzAJTjbdcPziX
	 pfScCWbcI76opCkx+ce72PbfI9S9kfDoguJq69Mv8XLyEJ1HBVTZemXDqu/BGtuGsQ
	 H2aKlgwBpMuBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFD19C636D6
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 02:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167694714590.22767.9831172077108422806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066cebe5acb47a7bfc877acc90ea45001675b6d15f7ff9ea0c89200737ce0aeb
Date: Tue, 21 Feb 2023 02:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676947145
