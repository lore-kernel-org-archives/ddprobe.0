Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE68A4F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D0ECC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669020654;
	bh=IIs20w4ZBt+IEM38zM6QJ9BwoSwUseknIlLjKPa5SS0=;
	h=To:Subject:From:Date:From;
	b=NaqMfjTMcnqZuVtSndm4NkD9pmR5sUUrbNMx88Ji8IOtWeH4wgIoribPqetWRJMVG
	 xRMPHsNwhzJJ/wrMM3E8uPV8v/0WYw+zu4+bYd0XxF8iS0CmKfOF1U1U26ToeZNb0l
	 vwgBrHzu6QOlUOtcFBIsDE534y94cA5vFfO0eV4UXlwc5NiXpOXl4dqkhqIzUChWx2
	 0wXefGmz3MMQ5m65kHeeGensKySqOUkbHvioajX09/Y96p3NaUCTyeXFyLSTsfBotj
	 ekEOk53ZOk2kL4OX6+MvVdStcO+pnh6qZaESKjeDHLuVbyZX1ZzHcIJP8XchlSggMp
	 Q55itME9DdhHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516BAC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166902065432.23761.6303253798748130797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f50731dd6fa7226c297d19459608c2fd50084b662f9f4032a6e04681b9569d8
Date: Mon, 21 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669020654
