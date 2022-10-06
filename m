Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2D34690
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705EBC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665078053;
	bh=IsAKzapEIHQwwW+9H/W3AN88cZFaUqDij7FSOXrp53M=;
	h=To:Subject:From:Date:From;
	b=Nq+aog+aEeEVrplskOo1vC65QyyrovkyUtB7CiBqAi09kZYqz/mIbYT4SbVBpizpj
	 Fon2c9WIA07o2zBnrDTGc7q7KHRMT6Su6P+UoDeLb34Z+lf95sB2CTtJoi0w0g/Ya7
	 Yph/lrHy+og30tAgZVPmR32XsvkXBUAekecBoZyIHA4X4mkIByTiX10fXMATyra74L
	 bGQRwgdvEgLAaYzj5083cdUyyvr8O1Ozp/ttXvQipWUseGBFi/i21dwf4FPhIDzuzh
	 RECPyptf9KjNyo7341FnDQ5xyCrYkdHAIepXzL6XM9D0HTJ6vTbwBP49hh8gm9VcBH
	 L98cbiBQ+yuZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57452C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166507805333.16823.17483679583664725006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b8bba78b999d0719813b9b4810639bd56ae05266938109ba119eab973dd13b
Date: Thu, 06 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665078053
