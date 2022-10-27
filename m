Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10E87B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E420C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666848654;
	bh=tt2JSgNdQ8IT2wN+vCNf23bkgMKz/vvUOBYGa5+ahGU=;
	h=To:Subject:From:Date:From;
	b=OpI8Rhao9SwA2MTSmw8X8bfyqioWLLmvhIIfTLIEozsgldKHy6cMomynqbXLwNNRx
	 Rs26TQ03dSC+saKW/MbGpOjNd41rEAEwgO897mh1bX6qLVaiVxtJav4Y8wmcUeX3Lp
	 /8qqcf5qw2gep/ZK7n40EdEKPjK61e50M0/eOzdEr5WorPfe18VlDpbJHgGo77IaoO
	 T+jzK8YHWoA2+6mFk3FKl77tRYAjT7vQaDhc22VRNmKLYEXN2tkeDbpTVkLD/X9vY6
	 CSDSdvxNcwqMb3E1ti902Rl+EsByDhkiAYn4J66VAsBa1D+iNc4yzoqNWhSbQLMyZ0
	 h8tYLlZ2712yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B73C67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166684865436.25382.8161055958666450453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbfb440e3f6605043aa882648f06dcfdd4a163b162f248d227b7cb4068a0ef8f
Date: Thu, 27 Oct 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666848654
