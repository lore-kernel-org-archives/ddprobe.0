Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2EC46AE
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 17:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A1FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 17:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678640825;
	bh=CpqChPgOKdJdrN3ND/lv+wUA86c7pUTXy2PM+qkPGjc=;
	h=To:Subject:From:Date:From;
	b=sZq6UTwo0DzmBVjNfwihczVegmiOFmqtJ//d/34PCbfkv1mTt/xwMutEtP62PzMLD
	 4hxgb/Pr1WSDwTZUWGmf4Lyk3MPqUiJ3lzf5PcFtXd6DOnym0/rh7lE4iisNFh9Res
	 u4kt0OyaXqv9S93ogms2Xl/gA+1v/BNU4GKqnq8T+P4F3Z5YZUvU+58CD0Wg4zYmJI
	 1wvPn/nAM9P02hMPFq9IIb6DqawxeJ/fTaZ0IzaHuEp6vBlKbXC9sl9XGf5w42Vbia
	 kst7OtvlJDafUN28RS6nSVNzu//xvDh34MrBbR69/h7PtiBOR7/P2esv1uaG4lYLVI
	 vLfLXaWfg0Shw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FAFC6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 17:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167864082574.26618.10335627842878225081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0ae35cf333addcdfc68385aeb2509fe949f72cda6d7fb41f7079b1ff55417d
Date: Sun, 12 Mar 2023 17:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678640825
