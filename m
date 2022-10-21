Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BA57E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701B9C433B5
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666314053;
	bh=MrXtL1JzjEi6clb+fFlDc0eYL9ldTNU2VpESMwQpmAA=;
	h=To:Subject:From:Date:From;
	b=tymBpNk46gZJt3XUdmYZed8NbRy9bA+WyicgwBB/P3MhZrf76nSB3BtnQ7i5v0BF8
	 Nb26XrOR66JSQDQCu+Q0QUQLkm7EgaXW/1d9UHpUXpp7nubwboxIsBkOoArPjrDLEs
	 mqvtxbkduFAM7SKQB1byXgbGHmLEGR39IzALlzmhd15HQNrHJxdvtPGDVw2Bva3wbl
	 +BdJMFXqGirqLPR+3TsOk6OzyI5HWmNQo30sm6wNYz/iCYGZuL16s/K1ygbVFzwxyf
	 EMsJBJ8YqWbG7TNnmXsHR4lx/HQkBIgKNrT+R53TN2owl9iWL4JyIZUsTaqpOsLCEA
	 rrWCD0blddxQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58CADC4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631405335.24897.18105922595047289479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae1abfb33024cce74099a6d25ad3a9952fc7ef0584c6ad876f761afaf540349
Date: Fri, 21 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666314053
