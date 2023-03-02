Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FC38F40
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 18:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F222CC433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 18:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677781566;
	bh=4yrr3Z6EJhxEcUqZ7RLfhDbcc09EKRLwRe2QU6mmFu0=;
	h=To:Subject:From:Date:From;
	b=skXYONrfgHeiKbQcND6DfRl+eBVWcYXvWiJViTLxcI8LZ/sogvs/aSHry+c8VIz8J
	 CpTbo7u9X6odd+ZNe+rNKJoP4RpxbgQ0GaJ8+GueEr1ohx9atZ8Ti7RNPKtU8xBkF/
	 RSEG1D9LKaHed1+jW8RBUtAXItHm8RI/DUWUA9DCb9DuHGNeee565tKOWbtRnOfKjX
	 4zeg3V3Ru/5VGkLUitecGjrY1tWpQU2KHF/U7VObTAFQCLb5PVKOgD4GbUx4dN6te4
	 /9lFZ4LuxvkhColdfbymaLLp5w2XAzl+cMDtUgfpkLeom4S/0FEDCDPgdyYI4TVs1e
	 +1tLfJ31s0Nag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA8BC678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 18:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167778156578.27006.1838844456026979433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 040ae39a34eb14ba1001a44f6bc75853b6514ec1bfb82ab5ad71a1a7eec84884
Date: Thu, 02 Mar 2023 18:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677781565
