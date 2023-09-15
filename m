Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F73C1B28A
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 21:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9AAC433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 21:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694814908;
	bh=GwRru6+k7Bu9iiFT5zWEhjovAfx3ENbBW9z9lnLc9FI=;
	h=To:Subject:From:Date:From;
	b=ujjjliZRpp3/EavyGZNEs5nsKNm3mUqguv+jGKb/6SNg6iKRfDuXrLTy6/WOkBUsi
	 cGwWFo1bEAjHFPZ+NZN9tjK2bVSFkRFlasghR2SPcEoS3Vg1ld2r4u6ClhnLa+vDSc
	 jSAqcLNE9kVvhi3iufXFYX+7Mt4S6pLKVJM3cSQqkTqKydQCLQ0lPf1T2O5RlINzqp
	 8vodM6u4p3zleIo+Pd6fvjSRMCJPpjPi+p4IxexltXsTwyCNX1LvGpHKn8zns+t3Rd
	 PRPD2qFhc8VaZ+PG30XYuLOzdKiPHHEJsxdjOCnrDh9ivaVn33Om8Bt4EAD71qkAHq
	 gueGwgF9W2evw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD220CD37AD
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 21:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169481490876.17976.4735822721750920000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443f357a86cebd1e4fb9ad9b4d5a8f8e5718b8bbc21324532e9e31d909455183
Date: Fri, 15 Sep 2023 21:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694814908
