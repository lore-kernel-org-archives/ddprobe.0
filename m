Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FF9A5F
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 720A3C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662841853;
	bh=LjglG6KKMDjADg4KoHDtn8hBEz4uAA4lbSz6xvtKHg4=;
	h=To:Subject:From:Date:From;
	b=FsLpPolB6hQpxPPyqFUEFmFl+PwQmBtzQkMlZbxa5OfcNr4fuoY6iEuL5so9cqRDN
	 ioQMOVhOSiHx28U9vpOizHLEwyqLTfyyMBXDZoIZSNGf7JieYDb/llNlujVhymDBJS
	 9Pu4NUoOirdnKDD74E/WJtsQg8Gd2GcBrMN3aMEF2eKyO7XZ77+ZfnytXng41G92KA
	 6S4KHKms8SuQlw13PpnegGHK3FpXm9SbO4o029FqDLms4i7hcIWJOjLOHjHeJOEFML
	 sI9JEPHZwSQ2KDRpBO/QKI3lLv9/wedDiq6SkDqxAmeJJCtWW0HFBC5jC/ZyXqQr92
	 If6I+dw4jIgOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526A7ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166284185333.7489.14313097665090736141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879d8ce3c14039022e4245f677cfd490a8dd618ad4e518d3aaf39731534fa032
Date: Sat, 10 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662841853
