Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C555229AD
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7973FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661632852;
	bh=ba+e2ygHwvcCToXqLuqT3P7AY42b4PNvNOz3bENjjAE=;
	h=To:Subject:From:Date:From;
	b=VQs5u33dTHt3zx7RPWKBB6XyuGVYpg2BESLtwniPCJ7W0Ecl+kGMEWAaoTOBkNAkG
	 k13A2UisDsiyhRgvDkKA7auBpH1kuxaE6JKf9J1K/nIxmvcr0BTbRRseq9btiCu2lA
	 36yUjckDPs8LfPaGwMNA6WFl93ctAg6XstjZOi2Eb2xTlAD++fSZDom1z7W0+uQ1p6
	 LDPnTIG6AS5i8ORLQR07TdiUPJXZI6chFuGnIaLFFBjnQcP0M4odOO3fqcoo17GLfr
	 iFHEXwuIf4wy1ljNjFhq2MlK7Ah8FhXSKvVngNRzgnbDWr76HHSsIZUJ/0SZc0kZ2k
	 1mLVkTswPP9+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D86ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163285234.8523.8608756479685882687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509414e15e2f645125ff4011eaa1c5257cc672c91f5b84abbbf103accb0f0499
Date: Sat, 27 Aug 2022 20:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661632852
