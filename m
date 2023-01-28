Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1593C0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 23:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D591C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 23:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674947586;
	bh=gCDasq/FTF4sf2afnjgmMAGS9pk4Y624K1i3L9nqAJ0=;
	h=To:Subject:From:Date:From;
	b=aznNNf6ECFmRAG/68ZDqN2SJoy4C+veZ6vR59GWlx/LMfj9iY6zAoX7VXUkSpraZC
	 jf86m9jDJxb6mON2HuOoObffOMJnVlH1OvWhf+A48iLHMeVkGx69VR6D3X14IuqYns
	 AEHaiDJI9W8D3/aGBac0ZOgNkfofAnWK47un8SaLYKwkpM8hYi6IRnD0uO7x9Ugc9N
	 TUsU56Y3QwwoiFITAe1oeO06OJcqYk9tR2fKyh9SHAgzMLpujZT3sy+Ziwc0WphhrF
	 +CNwdBy5OmxIlPT3ivSMGXpsRAErUiyyZLbiiAcnctIxAgJ+twgBNHknvb6rvDNRAA
	 kK8jZvijDhyOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC52EC38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 23:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167494758589.1472.9425170910057467361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abde1c026de6936498b376a59078bd26595f262a436d21815cc53eeb17d10f0a
Date: Sat, 28 Jan 2023 23:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674947585
