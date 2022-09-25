Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D4E28F3
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F61CC433D7
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664109653;
	bh=UpU8kpGyOcIy0X/c4wXEyA2GX+5qAhKKqZd3mWGVSao=;
	h=To:Subject:From:Date:From;
	b=nIrm5aC+adqQ/aIGvARzJc+c2Rb41WwMllnZ0+xg/0SnDPqzo1gexFNZpmpJMGL6v
	 jJnZcVADrNQLVGWEh5KDXtCR/qRDNlVh/Zn9Qi2M1neNEUXUJqF8bSSrlk6XK49+TX
	 HmzvQB4oVSmXKiEIzh8XKKEelrD8ol2gRO1MDwF30Ue6UOLyOwu/64HdW1Wo5DC63w
	 rcxENOf+lxH3osNqkSgq4J/OW50sL7P2wCjx68YXRELiB5KWo8zrK1Dq8DA78Vaiya
	 f8xwtDcBk2EfcxD9sTmPQrxLFFnsG0ukVNhvE6vicEsq3Um2TBGIpauTRBscn4lBvK
	 9NUBqDY96jItg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EDBC04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166410965333.17638.15993378155019209833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f39a056e96284da56f0f3d7e1dd9fc188ddbfd5c4ea8dbc82767f24d9dc5c78
Date: Sun, 25 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664109653
