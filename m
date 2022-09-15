Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5CFA4A1A
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B1AAC433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663266053;
	bh=XaKyA/2VPqKYvayk6y2pAsIOK/7lkWoYo2DY21lq+Q0=;
	h=To:Subject:From:Date:From;
	b=bkpzWH2r60HWkfRbktavQagKQtteH4Ou6G5K+9g8OuGQDmWw9MIpAobMrQuk/+s6c
	 /YJBxcRlmvgaSBSuqvghgF822l08B2DjhCmS4VyMfG7VdXs4ENMW9Qz2WivGSdwJBh
	 1XzVXLtmxXkIil0W/RvG2y1X2Prq1FcZro9hQ+qqRKbOMlmZ2L3b86glFNutnneZpB
	 X+f1GElfx6ep9066AZL2YX8/CroAntCMJC2lANGKY5b/Q0U1G+i7lgzXqMZ1Apvo5o
	 ekvmOecPxeeFZvJzdA6U/b5oHw5VE7Hd/gF/vd1At9yNgUleOfBds/R6KZw7ipn9MH
	 3pA3n6oIszVAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528C2C6FA86
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166326605333.6398.583513870034294457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1930200c7efb54add7e2e781849fcc546495bd7422f045dd9c781fc649b2806b
Date: Thu, 15 Sep 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663266053
