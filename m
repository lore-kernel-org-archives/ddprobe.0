Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6737C
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 00:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0980C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 00:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684456086;
	bh=3lvOwnbmbAyoElS+0PkBUwxXLiLNkT2sFiq+NY+E+JA=;
	h=To:Subject:From:Date:From;
	b=PKYelgpIDPWd7fr5HQ60W7parOXVj/9EZE5kU6cULL+xfGyXEr36I3tXaBsVjlB0W
	 Qrd/CmT6oXmo9Ui/xjiz2tlbrUg9quvmup72BJ/ul7ZHREdg9I5kicSeT1KtPKeosx
	 jDSgYWfg8BOqxV6QVPJWh6qUMvqM/1f5OSkdQYpTgeD7gUviJm9jbteCy+jsiSlKYO
	 J2aUrO1cncBA+GqYc0WiHB4ZfQ8FmWYufL5aHU0oHngrUkZEpKe6/Z6sof1bfHhP4v
	 O/26GO+UDSGFIm+sZrdt4b/nUyRcu6SjI/xq2a/7TjzXOdNJYVoOBe6RQi/W1wdRaF
	 +v7MIof/u423w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C043EC77B7A
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 00:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168445608577.5678.1266372244685520834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dace8fe3334a2fd9805fa4f48356e3a29f42797056672facfd4c526a1e8eb86c
Date: Fri, 19 May 2023 00:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684456085
