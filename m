Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36827E
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7669AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669013454;
	bh=wuXNmu5soiaYpMP+EnIEIMgotSmVgoezzKKNvcfNR8Q=;
	h=To:Subject:From:Date:From;
	b=Ej0GKoNP7LtZjC9+yV3PrdwxcvxIeSXRRFRQl3c1P2B0PALrjrBHopmJFTpxe729R
	 142HPq4Vw0lLQ+jWM0Kjl2AzFKaZhL12lhTW3nH6lCgFyoF4czKhsp59mPEZP7pG2s
	 zg4HAtStVn93ihw5LWi+u/wxxMyqgQB3HoQeFlqc5ST56aqz9f8tU2QGdOpGgxCsWi
	 TgiOo/9y0BMIV7Yv8RR+RLyVau/9lCARW+t+TIlFqOXditpOC6GYNkucHW0TB2zp5h
	 K/RTEpU2txe9vcYC3TtfKdC2S8upITDfFF0fzVusQzpZ3GwQHKqTeau0p8HgSTY+V5
	 qD0M3jWDK1uUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B5CC43219
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166901345433.29092.2069673148811943895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5fedb8bdbe3c1716c5bb4aac97ae286d70ab8012a287656ca7d1a5263dd985
Date: Mon, 21 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669013454
