Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D54137B
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 03:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9935C433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 03:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684035485;
	bh=m7X507Y6AfLJesihIyFEYsGDgUTUOXdjgL+MD7gkl0o=;
	h=To:Subject:From:Date:From;
	b=buunXUCxbNQrrpkMEQBVvEiN9opFX/yyHTSexu4/rZttyJI1ndbf1HexXP+vQn2Eg
	 /pYgzfo5yuxT6NnxCGqnB8oTxAbuwZOKBmioFhgmfA4HbYcPajrT8ciQBzfd9Th7lX
	 jE5XYi4XDf41krxXJLq4VNQB/gVzwiqSBJr3td8q0UFG18f/dLmKRDFv3VxpX9XVCr
	 BzLyl0R0G9fpQf9q4xJFjmzU08AS2ySTSebcGRdkQQLg7czY/wSrMWMFih+GVbtIYn
	 hBdAOzGXSY6KlNaBVLt3PIabPKK/TphPDRyvS7BtiBInGqoX722avL4wAJsSQ62Xyz
	 tRYvt7hmWeN5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3A5C7EE22
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 03:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168403548573.20419.9665777355182062248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970eb5bb2928d83f5921456656bd4333adc4fc9eadf20cc51535dc750a548503
Date: Sun, 14 May 2023 03:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684035485
