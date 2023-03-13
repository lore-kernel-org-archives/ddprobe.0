Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AAC15A6
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 01:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36BEC433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 01:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678671425;
	bh=LcazoAtUIrfxbrw4sxynHiuKj/PdzOeb8F/9l0xXD0s=;
	h=To:Subject:From:Date:From;
	b=LZffQ8a9pfZrjBXrFAzSiT9I990qjoT8n9e+zMbok1UTsY3TLxVibfmpln1W1L5Fz
	 +6N9GZvCeZvUQIpV/HgqqMUt20UqsM7i3k5L2MLTnraUMvr1wXmfnXRbdwmAlupdQv
	 5N9rtQ5OuIjsLr4g60c6oJ5fJldxJWIqUVBRuyj6ZOb+M2E0jWxcMHLIwQNcRJdTCG
	 tO37u5F6VG1FVJnZe7YMmxW9adEsiJ/d2Tk3Wof/B8AmRlqX9UxJFny5L2HF3pN6sY
	 3/ewSbXKpD0ekSjZFsMKNWs5/ZPm3S3kJ3JASP8BzRtGMEqlSqrwbJAmDQ4exaecM0
	 TpjHr2NlYFEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5FC4C6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 01:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167867142573.4932.2887347779080069449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7ec126abea1a1290915f154e0829a456a45aeee542ff8f79777f4c61bb39c0
Date: Mon, 13 Mar 2023 01:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678671425
