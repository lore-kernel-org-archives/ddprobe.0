Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEE215A7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83343C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673316087;
	bh=Iw2kvCpFaL4mRH+KDEEh9pMM42OsmW+uqMXBrfil7aM=;
	h=To:Subject:From:Date:From;
	b=s+Hqd7IgS8oDUwON4nfyopzKBrCSSyQCniLNgg1faFfHSTHVFP4ICOallpKV7zlVy
	 mmFSbUT6Zrzj2S3T6U7eg9PUqw6qi2xQj0t7YupMH37DHKaatVTrtkIX272q9LhEcZ
	 mWBZAr34bhWWUQiDojAbFZ1mk0mcTq7brBX2a/5pidPBNa8apzyKQKPpMERWkaJduw
	 4VhOhOEA5qTQiZ2R2piL4W3KzHNNc8HSZJQLwLhTFTN9ZUOqepNuSEZrb142Tp+hOl
	 +fRq5zkCKnNz8IsFjZ5aE2sDqO7C5Wn5GfrRleIWSB3jAABxmeZBdp4WrsJrt30nmL
	 H01N/N4LClh0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DA2C5479D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331608740.1348.15102416537835661168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2180aa0a816c72479d047a01eb1b298002d0fee273412edd5cdf03fc763e083
Date: Tue, 10 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673316087
