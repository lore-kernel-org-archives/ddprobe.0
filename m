Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320E21846
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 09:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9073C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 09:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679305025;
	bh=2VHZ42BdncKkqjxUbm5ZHOcQMuSxea/6idOw1LEviQ8=;
	h=To:Subject:From:Date:From;
	b=usjZGzbncoAocZBQAVytODxbBkMvJKQ7edV7Whp1iUP7Yls2LFTbbbcugE8eqqLcv
	 UF8ZE1kep59c034tFKVLEY+de/BwfNIRM9DmpHFoeS/4PTuZs+L3lWw0ny2NT2jTb2
	 XCFGoTuPeqMbmNXLZ4tKwbxURJYy6bFAQjANCh032WjI6BvIFzFr8mr2uwjlmNsQHF
	 sYd7yWcsadmKXjjW7HXy7UvNRWp5CSAvgzi9eziqhTET5gXh3IDsRRTCyJ7L/GDKJa
	 rZ0Gfba7SsE/dET+4agAdw34NdgYSBKJgFFS8jkuQ4jfvryTv/wCOi6zftNlmvEo65
	 eH69u7vPc/hBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA4AC7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 09:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167930502575.31437.947792652539875340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a922008163de8c0bc994449c16a992626704022691b11d1d155eee97be59cec
Date: Mon, 20 Mar 2023 09:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679305025
