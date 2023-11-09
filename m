Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FC31D54E
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExVTspto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 931B9C433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699531696;
	bh=QjC3HTrpRAv52J5+WdTbViU+GtrPxpbWv7DgGrTEpZ0=;
	h=To:Subject:From:Date:From;
	b=ExVTsptodvGvYEk0OzLnyHWj2zOuDdpUtYlVSK9xBqkmtLwhlW8IAeSp6/ATgzWHm
	 lm5bs0XlBX0sT99T+Y2t2j/BDvxaABJtJb1ZjXKrvVetRa66oLaHWY3uT5JMP2xE99
	 /Bb6xejObdvvu4oSKZF91/rw+BTct1L8d3xvngT1jSByE+GkhvFeZjWtAO/B4srESR
	 zJbxWOblI0oM8UNdJXHgPgODGqKFbUkzM5RTDQHGno+D2/qUS4KF8IR+hBypCeIa3c
	 U/c5v1W86a2O3c/f1h8RKzNPxMkDRGpHl18OB97pkl+BLDc34wQwS5YlOwpN5DXk0v
	 STAFTsgZPCFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E07C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169953169647.16276.5344002153840249981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90a2088789011a78f45ccca77d2e8b3ad1129e0e30f6193cd2350d4b87f32c0
Date: Thu, 09 Nov 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699531696
