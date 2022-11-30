Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2FA7E0
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74388C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669771854;
	bh=BIMQKbypUCelaqCPtRQlLZiDhfdfod37hNIREwGhLpc=;
	h=To:Subject:From:Date:From;
	b=s4+I9FYdyVFvAt6p7bkLW+hLpc9TFCnZ++zYBV6oVqBL2PDDnwiYP2dnEKyGmHh4C
	 hUHsBZumbEHAeeSvXHJxItfqSpLtUUkML8ZdgkuKKPudZgzCt8drBAI2bF57iLNxZW
	 1V8Fs6AIiomeDcQb8peNdmL2ZMRvPA5CABcGU3cCauGeokUdfTComY/d/NqVTJI23W
	 BUqEC4lkwbbctysqO1dEgbrcQOz3tUjvV5oYLOWm9vCsHBhunzUrjBVlAXwoPwQjco
	 Cwj8qjN+H5lpJOx0XaxL2F1OCHOcoMkwNnTlgapwBaP9R7DErdJkrH1/3JGbchE12z
	 g8lzmt3uos68Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543DBC433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166977185433.9752.11712374362982001151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d41a3012bf2ef6a80e242fa29687dd795b83d7864f01f73ee87fd250a869935
Date: Wed, 30 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669771854
