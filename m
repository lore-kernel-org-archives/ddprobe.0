Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD9C15AC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F2DC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670899287;
	bh=HePHsgPbVs7OGHWCdM4qRRUEOEiYjVHIecnu+PP/EFM=;
	h=To:Subject:From:Date:From;
	b=eEW8NpoJfaFDqANXcb3oI6SVdyTeWTLKiDaR5ULrvSLduUv+HV77PWuQ7IBHS/yY8
	 GtUNBmuPCTWv8rsZh2TIIfuutT+IdRwqMmkOzaQ3E/bkPlpVYc9MbKHV7Y1dfdvx/D
	 2Rd6ZWRn7WBTWvAyg4OjF+BPiPp//tNy/p8CJIl8Ike7HTrM1I8ePxpFASHNfzKs3F
	 9EBMWXxteMEgghBzNUlWOO9X07APEc73rg4KyAKB+8E57glRNEI/CLrE1GK6A91K+F
	 3xXq4YswfIU4KqlVdOBLDCYmDL/ieMALPcKD3MXLHNd6rXHQS0Z5c1Xtv3bRUbu8Ad
	 8I56Idb4XTIow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68046C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089928740.8529.8385512082531218933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e4fa7e9383627388ed30f370fe932a389a970aa06c8f2e07718ec595c8c4dd
Date: Tue, 13 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670899287
