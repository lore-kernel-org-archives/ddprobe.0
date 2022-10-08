Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0FD5380
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A3C7C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665187253;
	bh=ikecvJ+WZc6Kcw4GKogRttCnQsnUcOPHPor6VXfQuRk=;
	h=To:Subject:From:Date:From;
	b=WZDDvWCmu9ZO2ovGGWqM6+/UDUw3X7g170OuPUIdupZodCcVbwfwufm5zmoPXRj49
	 jI4rrmYMx0ApKws/bcjR5pxAuPVl+nfPVFVTIpyj1xWqO7435864NbUJ187eKT6nUp
	 mRo7lFRvNvjFGrta+i92GHz+7KBa1O6hgz0qCD11ed7HWEYByRra2x6htvk3ji6B81
	 vtTh1HQZgjPl63R1DcaIY15LRcKyFa6GPgtDW2xxc9YQ9gql2u01iPQML10QAh/cdy
	 Oc9AHxwhA62mD8SSRAiTIk1AWMW5LlT0nHMi5ogVCxWjEYGo7DrfNq+2QEUOf57MER
	 1my+y8EAsShKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF29C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166518725331.26671.9693281746660390288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c822cf9637ed3729feb9baa023ae15f132c0e4899a519b1d225f5a721797634
Date: Sat, 08 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665187253
