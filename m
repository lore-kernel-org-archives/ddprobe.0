Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A97115C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 06:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 28075C433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 06:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681799346;
	bh=TOFP8LWSp7PwE2FL5POWwvxhnZ9bSIgQoUUNhsdg4Zc=;
	h=To:Subject:From:Date:From;
	b=ms84xYd2DUDpV2s0iOu1NN+PKN+p7gcZFkdQ2kMbl4M66ca/W4vZb9XUu7CQbLymH
	 26czyVcMe/MxSMkTU1WexJcyzOL0M3En2lMC4mRww/wa0YRFu8KgoMYgQ7nJczYl4E
	 SsazeY/LCSNzl2dmVme2mnOK4j+9AS9enXwBv5oYOB/1Mn5bBI1lVMscp0v3pbwprK
	 Twwuhe8Z/jExwS+LyqTMuDwHSmFEpPMVjCBYybbQBnLN/q2NSl+r66lQQQv4OYiBsT
	 2jBRk5eguIu29lVcWWEh02cm6xqFNUyRVoFoqDbimcW+P39DY5NJ/CU1EAHRGLOxzE
	 D6ZZNTOs5ae7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3CCAC77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 06:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168179934598.11525.8639433689071914999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ade472786e28ed2eff5fbc833c9823b54c7c4fd16c6c91ecb57fcacfb7bf63
Date: Tue, 18 Apr 2023 06:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681799345
