Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C5C377
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 00:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7936C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 00:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695344108;
	bh=SZ1JN61kp9QTa2QEHPHN2CC0cyUbheVY3XDHvmVy7MA=;
	h=To:Subject:From:Date:From;
	b=pm2pgY8zwSEI0IKfq7x7yqLWrCWUWuuijoI2Pg8+my9qoRtsPJkdib4nImd/Cc+4j
	 0EtTLV+Jzeg+xDOp8KikSms9PN4q/x1qofOV0x+k52/8CsNr25sbSmr1dML7Imn8h2
	 2hKSjOqeeyVXv24aP5G+pIEK2uxpvhx/7d15p0q10Ko6zETYM85Mt9IwXGvBdYYvTT
	 colPbXusQ9HCxX0kUfQBsdMqbEG1DxYSFUFniE538r3ngcsMLQNuxiUcWIO+OyXZex
	 KJ7DQzCfxWQf0woldN6o5WMrfNEu+K6oFaN5pBLdlryTa2f4LpO2RvYJlTDWKSkJ7G
	 ZFbw0TM33bbfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6618E7D0A1
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 00:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169534410873.29863.6142332703409412276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80a6a80ef488f57364236fa672f267713cfb381411a4c345895bc74130e2c57
Date: Fri, 22 Sep 2023 00:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695344108
