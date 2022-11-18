Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4EA0A492
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DAEDC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668806454;
	bh=uB7uVlFHn1JDyFvbk1VqaBPMlFcTN2BAunxxU++tPU8=;
	h=To:Subject:From:Date:From;
	b=jyXYbiJuw3C/WTfVfs3uNzHXINAfuqAHYcSU+cZcrM4t04zqadHuxmJqMSoLbOvEC
	 L9b1TFrD5GcacLKDjIMdznXZj81sd5+UJuG8XU8KhAcCiJyfroxb9kchTN+ZK3vK77
	 VDjBPwxgSH8nw22C53D8FfrhgvG6TsR/6a61/m8exTB1caXShFoKdfyOEB6+qPFzTw
	 386VLUcZj49so+u8CinynEcCBHo8PPPcrolcw569x1SSLHd2Z7mX2Jc23VlB7rGj1M
	 Hr6z3k/WevDK3vPwmcJRlK6/SaD96FWvdktPM5nmVvuwoKUDruEKWDhA/qVD3l45iY
	 H9kW7dXbdGRyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51257C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880645432.22473.3082537589529412513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564616e4dd788c5ac99508ce94560d8027c20d7eff10ba0539ca9d06ce7d4b4d
Date: Fri, 18 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668806454
