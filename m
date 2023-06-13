Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A981361
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D0FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686697628;
	bh=tXqjz6x/w8epcS2X9HRtknOvZ0jxrS+YP6Zyh3CJGBk=;
	h=To:Subject:From:Date:From;
	b=JPuT0cwzOwOehId0+b1muZM5tEtsCQYMDTvCwDxs6oJ/y12GUGZ1z5TEmhOnEBWfz
	 io80W6nA3KBlXiuOynXaUzBGexAVW1qwTY68w4+c3hIXqqMOsLY8bOFIdFyfTIA4nY
	 G0DtDgTCUH3oZMrVppI0bsxlemhpMWcJAnKVpdtpYiUy9CY84aKd2kQu6BRsrMkVY5
	 LPpjcEKdS7Gi5popVcB0VCla+FsAKjEM03KO0ixwJq2KuMEzZN627I48jt4QlbV8ws
	 uBIIur8MUMRemB4aWWQlbLad+m8hx+kX2+fwtbWkl4mhUgaTuG8m/NPorchoW88f5O
	 OdkIuAQG7XT9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B1CEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168669762873.8401.7508814022878909033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b517edfe5ef9b7be1270604c1f35db93dbaf2e30c5dda6fb86a198a050d2cc2e
Date: Tue, 13 Jun 2023 23:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686697628
