Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D5710793
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C955C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668024654;
	bh=dWfcU2C+5GKYim/hlpNZeXpIOsUaXKOfhXUX6CzjWZA=;
	h=To:Subject:From:Date:From;
	b=TWk+cX4eufVyCsNdboU7z2GbfHuyhHn/Y5qfVLln/Hn0Tb2psRSswAZ/6JLMnX+Xz
	 tyOWhbWBEmFEEVfEw5JU+ZmKzrIijhCOvm48ZPzSfGBk7yE1aQb0M6+y7U6X1dkzds
	 UWqdITID0RgYQBaX6UmDnjnJFMRPJ6hZbvuYVcl2M/97d5eWaL5rwO3E9renJJ6rWd
	 VckifXpOywEjLi53hsF3omXrNX4U+FTvZhdFs2OwhNdA9Jde8LtIqR8jcftrjP9C2i
	 O25kGNMUBcWaPf+DOEDE9HNyP5xrGGo6VWTEA2nfOhIjMUOeyMeaWLOw8tK3kYODn1
	 2lYfQauCE5MwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621CAC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166802465439.25970.15379058073480921250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69080e642f32e0bcfc5f972278a6ccbcb44c86c4b15d07f4f94f7a5be7771fb1
Date: Wed, 09 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668024654
