Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B824636C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE06C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668825054;
	bh=ck0ykZVkYH9oV/OXQSnAgfRGGfHU/cUBC54f89JWVC0=;
	h=To:Subject:From:Date:From;
	b=aCgIoTW9o761hvJnkf009qXq2xxhCzyG9ejOmEjdQROOLxdI+YqUxj70d9ydLWuC4
	 unOItYb3GfjBaz6rO7/5RN97KvaVmONDuKnGn/5vnkyzzROguMN4RtxIKX1FWNOKvG
	 ySJzAcZsyyauDbxf3+pfl+lcntz+PMB/MEg3guWwiZzxbiU/tQjpjvxuyGs0fe3+iK
	 SgZvEXWp7DrlrZ1xvTrXzRwR+4ukpiBkpEQZoBSqRHzcjRgeAtSAP8oEqYEQZzf9+u
	 U9426U3/dSBX1FLyHEh3ctFjZfFHfMTMx0t7vmvrdbv0XLCznf41QqLJwKJuCPaZpy
	 lLOA1hAra5Sbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57386C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882505434.16320.7691980439106719408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd951793c9af7a20202c1bfddd318c696d7cc3192f468e6ba7c9071f7be87dc5
Date: Sat, 19 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668825054
