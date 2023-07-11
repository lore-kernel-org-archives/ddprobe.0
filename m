Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF591DDCE
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 16:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D58C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 16:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689094628;
	bh=fbFr5qBLR+s2wXUK95hL71ZlB3jaBijh+YoIqKGlrYA=;
	h=To:Subject:From:Date:From;
	b=Ik0+f8Sc0iqYgXl93iiKALvtzEFg30LvcidagUIlgrWiTAPdHjfIMUdRQcPMbLWsv
	 8nuc7DrZxvWn1b1GTLNcdS/bbAIfU8JHQxjuaFFUe8cmPnS+/mSfFBEGdsrCDJDzTJ
	 +9QIdoAGEtGRA2Pd71e2CC9PP0Fe/IT1hb0Wa/3/y/zBa9LkoxQdmm3r0PRW13g9jF
	 NSTItELnQcYEas2K7wCScIO5Ea3rW1L++8lM49vHEvfZDQ8rJ1o7HD/2jehF/30ETZ
	 wTxXODwGNZhrR2fUVlM9chlgXF4EhTGrE6KTg85NTlTOPVptEPzDa80DpIQm50PMV9
	 w4M4gJMmNIUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F2CEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 16:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168909462867.5031.3687336197142861236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6bf2f9536496c6dfb830c3e755239d40d4b45f7af4ae3e1b0f861fc655dc0d
Date: Tue, 11 Jul 2023 16:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689094628
