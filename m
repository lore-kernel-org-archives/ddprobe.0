Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1786FC2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F17C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674129687;
	bh=S/etLH4a7gpcdWCZX0VyDiEByicaX+irQV6eT52VGHc=;
	h=To:Subject:From:Date:From;
	b=DoI2/pm8fE82v/iG7OFa2brX3CVZ7uTeuKB6GOMt+NCrrceAm2fJ0hPlFqIKyO1d6
	 o9xnJavqm0yThYWp1GRmceeygZVkk1fUHJWsSS81e/cvlRoTg0myuEvYHDKB+KtEvv
	 /ZsL1I8xHqEDn0K0CDL1OHQ5WWV/QWwPru8qlUGXwJW9/ebmKZ9RUUJ52fnPqiITR6
	 Q91V3PZyOaS3yO34roxeuQzGlJxa0Mor8E36NQwAbNCc6cl2yZJyIwQbDYw9YWHu1j
	 8wvgxp1tAXSE3jc/m85c1KjIUy84POOAB7n3ZxowAFznnfb/htcEYtq9mdrM3z+dMg
	 41tQFKxrZuA6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC41C6379F
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167412968738.32055.1567535996786958307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bd07f64479b5171656e478a2206fb9086bdd19d9d8b17b298f875bb337c45d
Date: Thu, 19 Jan 2023 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674129687
