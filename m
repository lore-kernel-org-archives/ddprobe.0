Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1522771F
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 23:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A7CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 23:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679699465;
	bh=VFvotACayKQX6M+FkK/weil25cZglkDhE7vKIDayMqA=;
	h=To:Subject:From:Date:From;
	b=hc9ANw4Ol+uGgaMoPJ/p4JEvfNc5pf+N8FyTJ83h3bhs/fRd43WSJmrbmWPY0OyCM
	 im6hyV0ZF7oND42ryrvTcdjIq9rDQHSkY5sZwYdCeqSHiqTSb6/OTLUe/Zn8xAMqdg
	 7aAhyY9XnJREuLsjpKyTvxrDsuO0s/fYEmp4m0v2XjYYEPSyvai+eWqoH+AiOzqq8I
	 lbiLoH7kXy8svsexfPmTXQIH++/+0FrCGZHjws2lFMkmltkkjocSG2PRS0bocxfsgx
	 fbjuG5eMjZbM3PfsQLnxCaG5IsugZ10akABALPrYSBq1GwRg3tFeJmHTfdFQsMeArE
	 IhGSDYvTmYMDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B900DC6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 23:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167969946574.27609.8782842990001562579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2532360b780f50e452bab9d90786afc6440c1c1b7174eb2c718821a7b11a6d4f
Date: Fri, 24 Mar 2023 23:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679699465
