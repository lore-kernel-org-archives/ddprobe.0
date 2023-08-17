Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A5A14F7B
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 18:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADD9C433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 18:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692295988;
	bh=E3a/vjqMhnmX+9SjLoCEdo2dieJXhle86a6cCxQat6A=;
	h=To:Subject:From:Date:From;
	b=cqWK+c0Y7cqkXQRVR8CL3NlIz/XN/PDmqOmwQHtS+W5B1IcBvbNDUTpXDB9cyKruQ
	 yJ5BFYxk7mV4FZt6WEfspYPae/a05mwiWwqpv2vc/w7Y7gyLpAq+8HC7Hutha2PtEi
	 XIpWJKyfPjkRcZfz5FnWsj6ltSk32B5ii/E6OUmL7s+UifwhORtJfJbw8nSb7dv2x3
	 sg2udESgIAcfqLjIUJyFkggcCwe+Mz2zZm2VUUUXIN6dHNL9oeGRHrZ2M7M8Eku2e2
	 is9o+/ndZua0hPVY4F5GWbnN3aHN3TmA8WqpfcEEFslU9lE4bRXlv0duXJTwRFScoc
	 2rYEGlDCv2s/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD741C2FC0F
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 18:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169229598876.27028.13363628158889459415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d12872765963042e9637ba208e9a48089591d328ce453cc39e964b0379a374
Date: Thu, 17 Aug 2023 18:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692295988
