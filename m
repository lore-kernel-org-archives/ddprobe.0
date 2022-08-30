Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9EF53200
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76CA6C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661867453;
	bh=+n/rhiD0sDN9Wyr5bOzEn7eL735H1DmKKJYFyxgJ3wE=;
	h=To:Subject:From:Date:From;
	b=kIVLF8py8Wgwk3J4r14bIcsGmTDmsCg8ALmthDVZ53aFAoaWTStlNSwXwdSzK87Zi
	 8gaO2NFyEQRJ028plhnTieKiaLoDmTqVMXSJNDWqHpkmfYZAzr+eM7Zo72uIWOc2mU
	 LIHTuO3MywjXTwL8p4K0/VffgptEakn217i1bgHuFzhm3ZWSbI/Lip6AWTcdUd0Nd7
	 r00vhfiooVxwO4O2mFJfpYECScs0axJryLARcfpqCNcYkYgu9aIQqjGTVGAlrCsFh7
	 3vRDAioSVTgQIhNHk1lX8bq17elIjMkc9aTH85z4ESYXho2hewDDsC+lnAXcJqI+0a
	 vQOHBp2Eea+YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9F1ECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186745338.21882.12478144098239412680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985277275877420919be3d63831518616c85612d6e6a3dc81c32bbed154d61b2
Date: Tue, 30 Aug 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661867453
