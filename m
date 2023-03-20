Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382F46FA6
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 20:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE586C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 20:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679343425;
	bh=ftCVUhwiFMVfvDkIqLPg95hyxdFVJt0ABY66s2+o8JY=;
	h=To:Subject:From:Date:From;
	b=ZV9fM1cY1xKth5VTToP8jPWhPLFHcNFTao6eWye100458EoRyp/3YbQ6qAGxjSdkG
	 CjDd/RLYL8GyjvRsrR0pfrrTwVoU/CCWaA/UnMdEQ8LSJvn2nbjc1vdZIOVqS2dIaC
	 yg+hwQi7TCriThIehFj4cW2/p19ESeRn/H306+YBxYVqkat7e36cI7klkrBGbV3ggK
	 4K7bS1XS358WJ3YlyjDE2NMHd911SSLkb02P0peIg4dy8WVPlRpDOrAfAm1W8a72pK
	 ltQVlRUWPaZXcmcMHbocTxyRxnspoVHdIDa1LKcKcxcPzM5PA/eLEf045On4n/T47u
	 onn0iWP6qO6Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99FEC6FD1C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 20:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167934342575.22936.9246537241160626849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69f78caef3dc1d4705afe0aba80702d3138a1065735d1e4799d8dc623794423
Date: Mon, 20 Mar 2023 20:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679343425
