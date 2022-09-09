Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33DB4C62
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC75C433B5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662743453;
	bh=0bTjK5IMmxdXYkKMOWRzg8emxZt9Nqp4IFf2yWSvGuI=;
	h=To:Subject:From:Date:From;
	b=mW8F8jRXA3LGSZ3PvGBpYZUKJA1BjG7tPXgTWQitmQYexpI9s0PsLhFz8yqQxphnI
	 1IcRLwdWn3JRJvtK76Kctj8xGrFSvBuEzXJqGp1UpHlq176kf/EQ6YZK+qZHVUI0zu
	 OsJ5grTLoEAIbBUfQSpS2FM4ffgrSdbXiFOP3vHYrQc3FCdSNS88RPy8e50qoYvAq4
	 dhUY81mTN6tNq6esN7qHKPoDHO52fbPkhC46A1yXYC08BN80bRJMmR64O+4adjoPuO
	 YNUoxkGPV9IHVat8FFFG1ovoeqlwfBwf4mTS0YjKwaTMWVVoVlY+zAoieV//Q3zM8Q
	 Cw7dL+KMqKNFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 530B2ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274345333.12920.15692647049755816742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac0247055f368f8cae0841d9f96321b4e5171a4adc746003bcb19e5db95d2b0
Date: Fri, 09 Sep 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662743453
