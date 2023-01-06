Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57787B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8611BC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672987887;
	bh=RvI1o2TZ87xOLctPkUE3WOA7z//ERPE05WDcpUZhj8E=;
	h=To:Subject:From:Date:From;
	b=qYwF7pkvvqH8DYOypL7xRFUY1s2WHyPVSjRak03dJch4ObXY2IBw2S5VIHiAL6gXE
	 0Mk2mcHMHaTyA6p+9qDC5f1eSVpO0QtlFoDU9/NX2xM0ncKi/S8ZxVp4rFKhRBAUw6
	 AEzkiUvEUF2cPBWab5tMA9kVCShJWKDtJFaU/T2aGWt3d82hMeMAZXA5RRzvpqeyJY
	 3CcovaQrMuViGETvsB3TL0VpbBqatJW1hO4ZF0DiqKQzUdyNQTf3vFstzz/3jP9+Ym
	 3A4FpmatAk9DVur7YGqAttosDQc6Su74+R0mlDoA13Tj/vwiZAmXb0G7639W4lBrVC
	 RJV9teLwiSiqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65BC5C54E76
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167298788740.26426.8262653595467991297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0045583cc0dbc365b4fa7d561b137a4db50f9626d77c20ecbc7c569379baeaae
Date: Fri, 06 Jan 2023 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672987887
