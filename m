Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C872023C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 10:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B7FC43470
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 10:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661422852;
	bh=Lq/BusmBoqS/FTi5WCGh/o/8x5pNRNZ0qlektjbRJSg=;
	h=To:Subject:From:Date:From;
	b=MxHT8cV9nUA9MLxMOEukF83sMt4EuX3LYLexUiV4xWkSQkJFjuCEQ/7bVH1YDH2ht
	 6KmWk2PT2d2SqxNqivPL3V0w+0O7Nf6eTErmKFmqk189ugZriqE13DgI44kOEiaew9
	 qpDSM85DPYqkNtwlOesWtpTejjJx8Lt2sEo/V8/Z1efvX06MgvwWNyLovRc4YM0ANC
	 bznWVxvcMbT7e0yi84SiQAmtoAQ0qHO0g8O1neo+TZxM+PyVjLrnDwfflGM5/vrn0E
	 FNMtisiG7t+utFhpLtR90ppTaxpTAFr/Zoz8l8spNF8KDBnSmJ9DonlteVvPrXbnaO
	 uwVrkeoiu/5AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59629C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 10:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166142285235.11167.8577906073246158979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ff3464e33d1aaa71f61dcd9f9a066bfe4f7d2354fd03a095d0ca2172ba1c2d5
Date: Thu, 25 Aug 2022 10:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661422852
