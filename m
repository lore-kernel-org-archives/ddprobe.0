Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589C0273D7
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 15:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPNWhfEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF01FC433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697125629;
	bh=Iwb566njpBzlmWLdc/SZxjc/GmpemxcV6T0t9uvbl1s=;
	h=To:Subject:From:Date:From;
	b=kPNWhfEcRzls7WRo/ebK9ZQS/bhcIeTi3FfyIWBcuLXZoUbPX6YmGq8LhZD8JAF1r
	 yxAnyBNyisWLxfPJT8sORo7S5NKmmYRCXD2qtp+WYfk5W2sBhjXl1mUlSFQNo/mOwP
	 NCO1ylk3MmGJ9Ja+zop4jmQ0e60IRDGxji/9FKRKwJQC8nqaZ1Y1Q7NCRYIKPihTC6
	 LIv/A7Czu2J6FYdih4Z0tTIhEKi4W5L+NszAEbDQD0Oi9U+Q5IghfT7+5RgPiYVrsr
	 NTlbWiTn881qgQIZvolHdSQ5+/KuBFcwPGvs6sw92jvcsEXKClcwD1jNRb6nNNSl9I
	 TT98oTR8lnj8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55C6CDB482
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 15:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169712562879.3548.9470931000965462540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdaf56f18b947464fcffa55dbe02c12c27483204509914afd63f493878733436
Date: Thu, 12 Oct 2023 15:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697125628
