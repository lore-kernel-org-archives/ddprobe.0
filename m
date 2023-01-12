Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0208B8F44
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 939CCC433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673560887;
	bh=uELDSbQaRkcMWQoDo7MF679pzhFXyo/9M7a06XCjdFI=;
	h=To:Subject:From:Date:From;
	b=SfnOh0vc3OGiN25szqrUHB14C10R+mNDWe59/PoFiVFKGgF3sCkFcgEW+bR5blSQW
	 GqxnGATrGjoV8lmXlDj89bGuLkcZHPg24zly+oQL9dQIgdryMtPpLB6J6KlQ1go/ea
	 lqtWWOIo5nem4NFCD3BLAndTdHzVI4GQihVVc9dekJ2f0vccjlrzO51ieCV3/VeBGk
	 e6Qn62GRLd+ZK8zRfkOKOXLlRQgbel5DuBCfNqJPuZ2rTVfkopWZsPvulTV/W9LxnN
	 ocZb+GFxNsA/FJ1UQteaqpIVuJZmoqFE9tqgA3uFIbegyYYkCwr9LqmhS4rBxqFM1Z
	 Z1qBQuWcqYylg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7253EC54EBE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167356088745.7676.3272876036229883832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a374454a45770679e955830a87b08e082342a1a5196c11f5cb02499a518f14
Date: Thu, 12 Jan 2023 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673560887
