Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695F4DDB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 13:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46D3C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 13:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691413388;
	bh=8DvnLNiW0PdGS7RvFgHLzA6bXA8WkzSIDUp/K5TLgHI=;
	h=To:Subject:From:Date:From;
	b=JhBjMQdRAIpLo33hxqLQWUPfyGq2TbNwY2D7YYg1BWgFhVInR1V/2SVYcx5FHrvwB
	 gRd4Yj2Uk3/dIQ07EqXvqCL2u+IscTVZx4JHXq46nouyBOKO+umfrwMuH7QsZzZ2Q+
	 pyChJJiezjji6BGErbvjDC7Vv5r7KEmxkbRhEG7ql5yYfIegPacf3GPc2pzbaIpw9z
	 1xx57mGU3wesJZdxB9aRuo/bZm9NOttGX5y2AjjZubUOAOGoBIhIwjh5gXVoKoAQlV
	 p37QLU3oBYYU1j6XmFUwZpesVnzroCXnDvvfjYLiivVydJ/od7GjIIfMYT0WDW9QZy
	 n2CuMh+dRTVCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6219C001B0
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 13:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169141338873.27633.8161793807422021777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94eed85eb895300979683f141612985bac900f00883e6664413b198420c5b59
Date: Mon, 07 Aug 2023 13:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691413388
