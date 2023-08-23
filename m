Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CEDC139
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 17:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEC1C433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 17:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692812648;
	bh=ZoIiDd2ezKB/ovFEmDaCrsASS+0OKbFVS92xJXwsHUk=;
	h=To:Subject:From:Date:From;
	b=B6yiX08TIpYTAMbw87oxuQ7HrdZjIoQpZBal+RGW324gJLvdJxybVtZ7jKZ8Fgez0
	 c3frpRN9SYRR3FhWlXs+bejBO2t6NsJbMkXiv3hOvImM26OK/PqduWgIOZ5AYJ8kHg
	 1ZLPyn5l/2sEOgwNKVHYvdBnVvNC/4VrYXbHpKt61Hl5L03xy9BJtHste7S07I1/0A
	 774PeH9/GIqTcBmVdZjlXTKDtVXdELAiUAB3L8strUHDBI6/K2Gi/jJlASgkaLBE6f
	 mX3G5hMajWzdoKFKpngU7K8pZUPm+Jb1MbWf6fwBVgJ/nBArI7bYDUhPRM+wv/NYjE
	 aY4Urb/gKeybw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAE8C3DA66
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 17:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169281264870.18425.10098257212646355438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cdf3a31d496504017aee5a4ace9d7e745a378fe5ad23fb963c7afcddf5c2b51
Date: Wed, 23 Aug 2023 17:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692812648
