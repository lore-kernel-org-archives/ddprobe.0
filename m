Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E82222F08
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 13:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5D1C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 13:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695390908;
	bh=gpCTWr5FTBy9Vmin4c51XAIYeb0KKlRVlSa2j7Wbg64=;
	h=To:Subject:From:Date:From;
	b=IbwGuLr8spfCdf5/h5A97duKJV6DSFrtV/zGcJZIxGuba1n2vJ0JYxG4NlhF3i+sM
	 xJVsCKhEIR7bugLb1MaS47JRJR1kXkOqo7jElCvkbqMQ9G9W2b5k+cU5Bxt7QgbbFW
	 cbXd40GDUyBraGN2nmt8yLYugRM/1ixxQQjRvBNpr3Jzs/qR1TKTlD+jytvD25jPpB
	 LzVP2Rn/PTCVgynqsJK5HGxmXl3nO5HDkYhKQe6nbmxPacJYfaz9CHFAr1VeaDrqQl
	 or7uHkbWuDB46j3TZ8dgpRgRb60SD1JnX3Ud5CzEw4ESaMvBw65ujgwD8hFmHvQ5Ci
	 FBiSUddR/W/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA6AE6FE32
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 13:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169539090870.25818.8297386245126923473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f1cd8d8a52179df272050b48ec4b1f51659a694e853a2a772ec56ab9491900
Date: Fri, 22 Sep 2023 13:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695390908
