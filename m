Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC21CA460
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84149C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670537487;
	bh=gsXae0RIo61UF2MumQK5ba8Mqs9EQ4kxZYZAnk7KSTY=;
	h=To:Subject:From:Date:From;
	b=X3bu2z/An/nq3J1tHllVNKQcJqN9Pdx46TsXXdsIrTnHk7+ASc2geuZIsX2lLHdlO
	 A+F4LJ+nA0pOc378O86f0G1qvGYEIvmnPLuvC/k3CzJ3PEuHnipT6u9zqd8iAVtwsB
	 H4FN2YRbbxRAlSoFjeIqBwemvN8opNahRrTI58cvJEOSpXvHFnQ59bCfeKWcWvFkFK
	 lu5v7rolmHvbei2MirknvdftVCK/OB35xa5UKe6WzpkZ2wDuTZeovgUZLJsrlZKsVU
	 5xUx/0LTLrWomaDHqI7Ir+P/Ew/WRIM6zRfvolbgu+7rldn7X9QBjUA7KSrlEFV08A
	 Yijlp2Tu6s/Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6408AC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053748739.12119.15853720297473959559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b953d50c47b78bf1e74db5c912fd66642c9bfbf644298d243b9d81a7bae0ac
Date: Thu, 08 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670537487
