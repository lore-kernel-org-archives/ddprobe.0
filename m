Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB0D11718
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBlnPvua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5BCC433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699945696;
	bh=taE30y1oHS6jNCg3ZVfxeaAB/vnUOocevymWUrruod0=;
	h=To:Subject:From:Date:From;
	b=FBlnPvuamFU4Y/9OX8lsZyzeHhWrvPVPWcRiVAsuDhPW0zjeeth3+uHjxeA0L8JkX
	 YVV97lr45ZBt42Tg30vj5BHO9lEMQ12fN0Kbc0AaIzpb6VexKczGOJfRo07KBrIDIY
	 rGed9r5EXoKgOSuNczDq3JuBDTdMUlBwPQC84MNIBe2JDVh0NNS12Dj48pewqDA+r6
	 jNd5jKBRKgjuJaH2G3V6F1JzH7p4zxJMGRVRpubLW9EgrfHidljVHkFy3P++xDR/uV
	 UGJsPoJymZeX5D37vNgnIuBlJraES1Rcilv7qzXpRsgbm1NPyLiofT7VtCq7kGYXqB
	 HX+RC7nE3RYNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6313BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169994569639.17561.9059645054428162337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ba6ad5d7fd38112ccbe64dbb4f58046c6a2a7810a41a05c456fe8d5d64e5d1
Date: Tue, 14 Nov 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699945696
