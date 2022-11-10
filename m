Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51F8364
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD63C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668041454;
	bh=U7MIZ31FPz4MHdCoSjxeZS5HiWJk659n5T3r6ArwUiY=;
	h=To:Subject:From:Date:From;
	b=HfPrpD77uOjD894OEHt7vKYyoAWBV4ysIdXT8k4I86+KOwEwFLMR6ah5p2grUfP8s
	 tYfDJr7SEuwxo/9LCQ+KXI4qguCr2qVCdeRg2sevWNwzCLmh7hx6EIEupgpnsMqwWU
	 yP1IUKSzmwQOxyqFP/gRNat5Nl9vvMdkPXst2/3rdkpZ/4LSCSwLVkVYADWy9sXeDC
	 lEmNJOMYVQl/XVqH36VVvY2J3aRMZMG7EA3SABPrCa/vUA/a7CJ+rSt00s0PANCTuk
	 JBeeSvUzylEZWlc4eKD2uVznZYt6fqYLOHFmmcPAVC2LHs5TdTncyyFUPW7dlS0M9R
	 JeDg281VjGSDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5551AC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166804145433.25342.12700848246988797448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b512b95729d3e11064e0687cda7963ca1fbbb04a81c67f10a4e0609627d8a9c7
Date: Thu, 10 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668041454
