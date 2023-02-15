Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEE253AF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 13:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29CDC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 13:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676466485;
	bh=aBfh3qnuJ440I3u3iwdsR9ZISo1KacDmsTd4stQwjXo=;
	h=To:Subject:From:Date:From;
	b=hC/HzD4IXFaGfQKkbNOkQKbHTLH2Wk5NPjs5XRvLbEd11zDMLCBz6BSR84VEhcXPE
	 p80kEm1j2nNywLsK5rRDj1f1mx4pvJi8tg70N0r2iQuYoHJjvHEtcR7WO/QoZ+sYN5
	 +SN9JuATNsNDlwVOG/BSVVZIUbhzNvXrTywAYNGYV37WTEOkACdodx9cI6Us4q5u+i
	 2NXgW4DAja2zwXsSDDG6RLpziF8loyDYtFUW/iWmrTyVXv3eZQWL5+WByJq/NYxq6l
	 eG5PA1GRxhul4rug6NFanEjJbnSItrODWnOAZkXgqlwnYT5TbmeJAdivl4loEvh4mz
	 9bIf+w0MuSlYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C732CC636D4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 13:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167646648580.9071.11767722102462899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e158982e11f99e26dc70b30a1c7375a8ed8be5b47c1803af3f445e70d1fcdeb2
Date: Wed, 15 Feb 2023 13:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676466485
