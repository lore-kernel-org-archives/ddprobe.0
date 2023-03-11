Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382F07B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 04:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46ABC433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 04:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678509305;
	bh=YkMLycD19NMdkPPuxKj1fohwsjVmZOaR54kQc62wDDg=;
	h=To:Subject:From:Date:From;
	b=I5MjLPQS+qIR5kYIk9uLhSn8v9e+DTBpM9ZbTBWBAqb/zq3PX1XtZqrbETDcSDNGA
	 9F3J37LRIZVCeFgVW2UpVhGG98hqa43HS407K1NLkFYsuvGovLPtXQF0BBqkt+GHvk
	 cgxH5iPmjX90qLSpumgLu6sKaEg1+fvjO8mOGpnoQGXFJ1xPxnQEnztJ+t3mGZMIR4
	 kfJu110CFkJC9zTX+BLXnruE69bPr5xkTBdDVjTIS7TCEEohcBswjgCupxOAGmzuIw
	 jgLEKiGJhKyGoYpLhWYx18JrLX2ADHcYkm+NZkzE3dQhrh5RbbdPGM5WOF6t/2cA+G
	 R/c556EHU94LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63A5C678D5
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 04:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167850930572.13789.16867586860314309425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895d92c4c851662490895e3fdcfe09ed36f5771701e6d25ad4aec7d53b8ad0c2
Date: Sat, 11 Mar 2023 04:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678509305
