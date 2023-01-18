Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E141C53A7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86327C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674069087;
	bh=7q+IUAqawEbpRIJ0YcHv77u2EOmmaf2K3VH45QBlCMk=;
	h=To:Subject:From:Date:From;
	b=QgrxUmxRmmMIRUUpDyLPWb3u1NEPoMAuanoyGUit76cKQL2hSmeePdH941SAL3T1S
	 De+Aerl76/ixcPcECK3ok8sfjUob90fZCRtCQVaCgM+0V/+e84ZI+qgv9A2NVAkRtZ
	 8VKgTGNmrYni3rfiZjLPP9YRn1Jakx43+7FadtXJhdV1fjwtmW8NKNCirN9U3a/kuk
	 tI7EGaJthPkDfEWCRyd+RCYcZ5KrcB47ZxO9L93C5ZFfZIyvEwcVjppaGsKWuBYdnr
	 UTc6qRTFy1YHxiUU3qWr7yIWzURRVcWL4rgasJWu+3gFOnZxOfXFuSyadPup8NVmjE
	 NMFCGutsrOlFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B70C38147
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167406908740.22888.254660105303668586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642b67ad4348ef899c62f3bc86bb485664683e5b548ff108ffcc15809d6e5be3
Date: Wed, 18 Jan 2023 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674069087
