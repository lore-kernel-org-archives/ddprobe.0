Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746DB38FA6
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 21:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXEQNnDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C2BC433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 21:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696627028;
	bh=NnmPNQyFnHrnQj21jW0aa67e4P/YkTZ9G0J7lw5kiJE=;
	h=To:Subject:From:Date:From;
	b=qXEQNnDhfZyXWCh7uLIOo3GOj9QlLNn53TsNocEknQvguzE+RJlFemxilT6P1bT6j
	 oXkeeJN4t+3ZuiZabBN+Da9P4K/fDs1GnmBksugXS6xuI8n7iIsMN4ElWrHk00/wwk
	 nqjqRf1nC6VYtjv+2TfsmXAlcKCsZzA7XRbd3tER/HCVerBFw3AhA9Mjd/VaicdWYX
	 NycqqioVV/X/6RG8ATD2YRKw9K+EdP+L7i7pP/Xe3oxDPyilQWPRclSzYVGT2WZ1Sh
	 hlwL3EiTv86aaMONHMBKW5C2D6/RppO0QC4Lr37rylmJkgr9oYcXkdmGA8uLg2TsIT
	 21lJAge2Kj4oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF207E94120
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 21:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169662702871.4503.14052068104148187594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806bae8bfa56c35d555e8f5995681c240acd103764e429904559fdf48b586c3b
Date: Fri, 06 Oct 2023 21:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696627028
