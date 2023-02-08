Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A3E182
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 00:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1A4C433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 00:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675816745;
	bh=Qu+YaaLGHUWhkVfz4nJXzxZTx1Nb9UOETkoa5zyERks=;
	h=To:Subject:From:Date:From;
	b=twb/zplovgLYJ3UttmOLPciCuJdRyDed8bNEUXQqNcXxhrkSbwDhf7M1og6C7H4Fe
	 b6Z4iloxGhVyYWD3XARUEfcaYfQmbDjEwyP43JhbT/lUeG4AGSZHIOB0vM2onURQBb
	 3QikgXvtgbatEIgWLyfqaFyS7pqWjkUFcyYUXg9+445x/44FEMDxIGCvo/0denriVX
	 Odv1mt8ODIi74fbiYQnoCoMPwY7lZgB24FZZqvfuS6/cH5slbFLbvqSyeV4fhIygD1
	 OgvP4gA8wgJurxxdIx6dchvCEKa3WaHWYaCTbtIegG93jFC9DlY2LN/XaScdl2e1zS
	 e/oj5R7iiLs+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD063C636CD
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 00:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167581674576.10926.8389375715944875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8515e077d37731f37a2ee49ba2f5c25c8623662f4e83c7cc717a4d7e9e3b6b57
Date: Wed, 08 Feb 2023 00:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675816745
