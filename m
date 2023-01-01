Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12D27E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AE01C43392
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672571487;
	bh=BBS9hN59dxP4b/UYKIiZvHAWCCSnwnsBOcA20nharAM=;
	h=To:Subject:From:Date:From;
	b=XqhrsRetwEOVdq4z64ZPoqyjSuJeuBzqLGBqR0r+2mI4yUDYQyncPMFaAWeYkn6CK
	 5B6512L7pfnPZ7ePvNd9RpCBjhWnsikLUS5hjHVUkx0Y3YDO4YLIODr13LvrV5suvj
	 c93+6pRgIkqWgz3ZEKfEkbDWcGAC9XfgFSEGEXMsS3SE5b8eq0vYxL7hmcZI1FXLqi
	 +/VIq4aqzz2klklOl3r2gfI2wpLmVLVg+zDRG2M7cvVXlKZegLzeR6XreiVqd9pB25
	 M6ZR82j0lFcqkjz6G0kNcogDhaCFfnOvMX5M766i9Gu92Hs56ZQniOYruO18ShPZtL
	 JbQs3+KojTW8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B576C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167257148740.10991.14844811083638281363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94c43b4a81843a058eb432cac8669cc89100c612965ddace76911c6e6199d63
Date: Sun, 01 Jan 2023 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672571487
