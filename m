Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429A71119
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 08:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE1EDC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 08:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676882886;
	bh=sw8Q6z4mtbklGlFv9o3XZWkC8UYc6i0ufKg6QxpMpus=;
	h=To:Subject:From:Date:From;
	b=HgFqobuNi3nv2AEI1F/H6/T7RhqB7nPX+ctDG08sim1/GWc1VBkXwZVEiDV3RjGMV
	 W+1Ly/sVqNa8zDVEqfMQnaBMtTCzRzCVkgy1rJ/BqllcXp7oMh7yW3O8QTKTFoG8Lg
	 s9VVO7hQ1uhpCzGTRTs3Z9IqiKMT4shtuoJdD+nserfFUsykwOjbbYgbTsj8kH/5wf
	 iVETR0B19O5A0zsC1/4+3c6FtmQ6JE3xcgvaiR7HyXYymw8KldO8CYmpD6VZUnlXhE
	 2kBPNwa23LW0f/hBaNV5Ud0K1vozv964gv6VenwazFYoWkMK45o3ZNjP63pRF6AXtk
	 euFYLFWNJueZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C495BC05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 08:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167688288579.27181.9223573082915120264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9caac0d578096c95631a04638a8a3c8d04be0292026c2c0d8c170403367006
Date: Mon, 20 Feb 2023 08:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676882885
