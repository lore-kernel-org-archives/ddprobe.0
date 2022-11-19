Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970622F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3D1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668859854;
	bh=wbfur+o8DT8qrZF1Pvj8bw7z98G3o2FXNaJSA8INq4Y=;
	h=To:Subject:From:Date:From;
	b=aQ/4thFNOVulUivfmSNL85f/CDKLsawgRWTMNwcsWmID3elamqfhEkFi4RPcsrxEX
	 I30jVW/FgP6DMA3LQGloaaCN3fbK1IVngESywD5HlcbMtDY+5V38fJfWvc9Ol/GgRH
	 HwdMbSkadbwp5tMVZ09sYjhzwwe6l1aJGhDz0R0CntUj/WlmxnwKKbGubd3s5DFmw3
	 ngiFAXZPimnWHcTVwJWpduVqG5FmEcw7FG3d0+apP63nBja615f/jxRW4dLXwM3Akd
	 FGV3BUyOqpNEJybaPOGjc96H5CFFmrknXsmoH9P7tmko9ucJMnQ+Eav3fUiHy0sNf/
	 fItuMxnkHJQMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56FD9C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885985434.25182.13296449173373605388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e68188744289bed957c8196cca2ef03f54fa8f63ba7e340b85824214c7be0a
Date: Sat, 19 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668859854
