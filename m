Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240C0D269
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJZJRX1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EACDC433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699604896;
	bh=P+sB0gKpRp20tKysren3G89+kSA4io/KwwLHmBVlwMM=;
	h=To:Subject:From:Date:From;
	b=VJZJRX1CLk6Ia+zRizplirn0vYqotdEg6VlfK8rubnCPahPprGCCP//v/59dcM83y
	 KPAV32zRMPgSJzHLliAH2jb89QDKyJCsrWsv8nyl/KXe1t0uzL+Hb31N+xYHqjpLBp
	 3BkY8fK3oFtn01/dgaeN6MsCNvcC1cqhYfIld0zXu1o/wiU9DN4xOU3H9WpPEAZkip
	 SIoKJnMD/RDRntbVGVdkGVBUppTf+dZzRCLVmJ3yXiB+CJeMB8WDq5U2vTPFT9cnu1
	 FXaPm2cJ+/Leh9kgq08x2q1Kd3oKy6R96sgBfD6YVipNzCutw4UiIgbRJebvlDSdMp
	 qbyZCUrcS8cxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72C10C4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169960489643.19693.6143968706673158390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c260882beb9dacb8beecc452c7479eb4ef0d2537121c1eaf73aa4e372d4fe2
Date: Fri, 10 Nov 2023 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699604896
