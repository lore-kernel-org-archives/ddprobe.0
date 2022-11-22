Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FF71C15
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73AFEC433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669153254;
	bh=YdZzGZ5gbbEkcy+oqNSoouTppwK4VGI2f/GpJXv7gZg=;
	h=To:Subject:From:Date:From;
	b=s6hMmjKMTgFfP87ZAYdc5rXC1ptch8Ge0wiiYL2twUaX/EZkEtoCLKmyaf52m1bsf
	 BG29/yDhi1HEBuP2uo84o1gNP6sYjAeIIVq3HSR1D01rI2Zuz5oHLKoK+rqO7HPrrz
	 j6Ens0TbGVtR0mrUpgFegfVAfmrGpbnGvfJz9Ml4L4e05Xw8RJWuwFpvTYsn71wtlv
	 Oh2PqLyLW8aWtcWUon5sfldTCxiXVoH59PudJYyyLpV5gaBIyhaq7iWP1xzFtvrcUR
	 9ym0V4R+ydt5cNEO8wwDaGurKanPuybTYW6zd58SS77yGq9HsH+ftArRILDy22Lk2n
	 DFwaEXEe+CkbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55984C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166915325434.16791.9416473748268026484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9daf59dc5dae0daf70747d6893ad9d300fa4558205e2bbabdcfce29ee94b3fa
Date: Tue, 22 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669153254
