Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FB78487
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 07:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB451C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 07:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695195308;
	bh=GOM/uQTAnUbqIuIclYrzvyYyQVR50gwBmfZHbZCz0WQ=;
	h=To:Subject:From:Date:From;
	b=Quzezq+jUkcBTEdQIqqQQYF2XhozTv8c6t3/KHTHZEJgxzeep0Q+swVLfg70vsELq
	 aVcRxp5P/i4pw7A2P/eYERKJ2KyVUAaDspt1RBhjCeWEStqa/aCnZsdnWVCl0nbhvL
	 aX2PSQPzygtzP1ugW4JLGmA9UklNykd5pd3e5obDgommAz1TrBVME36pKjysqcmSDq
	 FM8Lmn/wyhnWtPFXBaIq0t8ua89f6lQxgFwcYmYjw4nkBfHW/0r+3BX3T/9AEVDQtU
	 q7rQEBWmABoAxLc7qbEQegjv26k4beAYR+Ym5rMCOq2KM3H4Uh9dchccBpp0M95cEl
	 fP2Z1WTI6D+ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F3FCE79AC
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 07:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169519530866.28763.5014679076085761193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56be2f06cf77b9a4335dbbe77f7efa89843c991093bdd09457bc1c48980142ca
Date: Wed, 20 Sep 2023 07:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695195308
