Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB294182A9
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0vFs3df"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7781DC433C9
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701851296;
	bh=tgCB2lcNPe2RHIIRDhS5nYJ+QQ3dqI/i+ogDBLV5FYs=;
	h=To:Subject:From:Date:From;
	b=l0vFs3df2VnegzKBcqaB0/O34Rwr0OODtaOZ/NyDBWSYJqkQywjaMF5hlVxf0wkVR
	 Pg7O17HdZ9XKN/emutkWm/f12vBZ055Sglg5Jh28ld9W5HFhSsUVXl3QSanDC2CtYU
	 sNcES4WLRVUJ2ZyxZ65d+EeXJffQU7uLo5hO3sCKkCrIZlLrGCq1+CvjVbTgQ4qsnT
	 8pgJSPUsdY2pFjFzYGjhLM2NIdCfj0GNLcgz1Jn68g7WbTUY51oia/6cAHjHGUjTKi
	 Q0VcoRvCDlpqGnJpaky7mlDBmAZSVYAMbh1tX3ORZ2WEVYxnmoEojFpSlIiHL5RFDI
	 alEs6xtzJRQow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60689C4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170185129638.10550.11161268968183380877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9dac3b3b71c0311559145966f60e703e86ef387837fc1e6b4a6e0aa55c76377
Date: Wed, 06 Dec 2023 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701851296
