Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5CA23B0
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86077C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672474287;
	bh=q1Pg0LIiHWkKpZt1/7UMWEOkCVQ4YqjrCl63vHyz6rk=;
	h=To:Subject:From:Date:From;
	b=Fxr2atE5hO4ccAXL2U7oCqx+/Eln6aAG83xz0rO2Af0EG900GYVkdAJy/CJ7Ueef8
	 /dnyV0vTXDwYisNbNcHXDCaCRqUNgTiCT/K6GczF7/WWn/w81RCAG84NPQg5WS3UC2
	 lzoyfEmw0/JadDaZRBBuNfhMl5XgrTvy4o3Vj/OJ2t0Hzihwc+JSSsGfBGqVJQ5njp
	 d9Qd3g7vqwKGxuHxTRXlNHjTm5GcDiapHqwkO7GHwcbOiMRw00xdZ6DKSY5NbLZl7D
	 tjF1wWjqPbLqOXaNyrI5Pt6n9HICCq6pYfv2EQfVa4FSqS1d87/7x+zgTaVPztg4V5
	 5qoTAq0E3ekrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C7B8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167247428743.7125.13009253641663666775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e0676c55fc957d792355aa3b148892c1bddd9833f556d8bd4b5c2bbcda3f7f
Date: Sat, 31 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672474287
