Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCFA374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 713C2C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661838653;
	bh=Yyzgp+3YM9OeADaKdvPdlVK3Y8kHDpgNH86Ro7SrGX8=;
	h=To:Subject:From:Date:From;
	b=HcMAwL8+FQ0yMdH+vRsUv1366mQBgckbJNA94ciJwqU604DlAI6q1PRdpN0NyzJ+C
	 e+kXQtMNI6YutUJqiwX1w+ALQiHDMaybep8FIRPvBpXDu0APewD5af3vtmhrdcPa1r
	 ZqW9Q8Y8SbxNg2geEMtdUCEnOX/n7Gw9DjlNGgwlxfbXq+wBeNnsivfIKcPqAg3k+/
	 hvMhDCGgBPW80IJLVLHeYKqyU4XVwZH0cgicEC9aq7IuAaP1WcAm3T5Mjh80MO0B3I
	 E06mDKEbKOwxt2nvXFOGAooniByjflx3fgtdQZJZPeyPKCIJ7B5a30T1bxpX+lfnU2
	 02K4GFAvfHMIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59F0FECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183865333.5436.994350220566122693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c23f0ca82b83243e7413da415c2371fc0062f1839b9ce0fb66575d40ae1e44
Date: Tue, 30 Aug 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661838653
