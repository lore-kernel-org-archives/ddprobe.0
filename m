Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1C723A2
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DCCC4347C
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668683454;
	bh=6CRbsAF9XBd/17LH7V10xdvWsSXodAtSlpcfaRf2tzs=;
	h=To:Subject:From:Date:From;
	b=RMvr3y6qORz/OoQLNetBb8QtgkgYR4POD23363/S70M549BD36ln/Bxzat5rQ3CQQ
	 /K+BrAmYVM5B1hrsNisM7JLvIg04ps+o1wBzGEoDkrWeym44FeDLSFkF9cuTP9+/Q0
	 ANFgllqQmTpwb7n2HXP26WZ58otctZIvFOYkEAzMzLHduQZgKh96ggyheOtoUsk+uI
	 kkHh32yFtdhjSQHgX82t6DMxUbpXOv5eW/fUUIGDcG5DdAcgq/T09T6gaBAy3kPtVU
	 KANe6ed/qZAPDW6l2y4dkhkTCzuYXsDkBcI/lUP1c6U35huIQQqiPNWEwIQSuNjOQe
	 qdeaO1HJGu74Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7F2C4321E
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166868345437.9438.4821830343457420619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4631f03b1f4ca989ba6cbaa9a44bb3276342cb56a104bd1dcced9f745143f1
Date: Thu, 17 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668683454
