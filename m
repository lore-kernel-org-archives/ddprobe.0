Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3DEC7EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 981F5C433F0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673596887;
	bh=Exy3fiq5NLxkkYNXLCbvwvW6gJtN3knxiQTxbqbtbK0=;
	h=To:Subject:From:Date:From;
	b=C8gxoP4f/WaGx8ulD8DnMQBKzfgw39LrArWByJ0n4o8E+/+I7ucMgsjekQYq8cE3E
	 ANYDXdEIPaOHwdSNU1cWv5P8WRK8WkFOxxNUWjOm7TMJIPHvXBpW/PNGMcr9/XL1Cj
	 7X3lF/GVYdCBdX1470bvefcpaKu1iK407ejQH3DfnGVuHocfm+YbjKRrPQXhaDPdIj
	 0+n4wbAAEa+WCL+IV5bEuZtpJLMydV78Vv4tevIMgJvP2Z1lZemH/Qi9emyOIjCs9y
	 xBIwipAv1Hh9oXx8/2ZgNj7Jf40o76vTFn+Ww9DhQN1HEnfSHmxPEeWQu6A8P8WJAi
	 cQmN2kPuTNboA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B212C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167359688749.25978.8486652615377381134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539f76ea4057b97074829b12988392407c7b3c32322621a9c5b592ca257ca8ad
Date: Fri, 13 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673596887
