Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF03A20F5
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKR/CulS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A36C433CB
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698572896;
	bh=xy91+Oniu2g4LszypvqoKVyHcx9/Rts0p+7xJAVI6e4=;
	h=To:Subject:From:Date:From;
	b=gKR/CulS5sby+zhhaxzxSZfbMAh8lyGtY1wC1hrTFb9qxN5L7hEKQmILW+4vZ7OyO
	 xE7oRbsKDINcwVH9rW5RLqbsAcsQ07iL7cRjwTTbqfN1/7y9Zi9aU3OGACRWciGprV
	 PV/JxzpcJ04c3X+pox08OQAxbUQWDV/GjyEZdzPPPrxWSp0zvLfQ9Hvl1BbpH+Aoyv
	 7/N1ZZbsEIQtq1MoPx01y2EFio8RYetSEbs4RlAyzxoh42NASoX7pJgVdlg+mNUpgE
	 C42TdWzP8vbyNUEcDvUn2AYJlgCS81oqs5V2bw5IwwyCcu7K7kmcid+KdN2ytzPOcr
	 WV9oHpA214GvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64755C4167D
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169857289640.20155.14697282137267986203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6eb9093be2b4f42368bc655e8c9ee88caba275b9c3f15fc1308f070c6931067
Date: Sun, 29 Oct 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698572896
