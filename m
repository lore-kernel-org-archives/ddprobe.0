Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C711F370
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE6CC4347C
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665708053;
	bh=Yki62kjsuIPV5sPsbfPMUcA3440YxadKp82RTf3PSB8=;
	h=To:Subject:From:Date:From;
	b=QK18GWS7BmkzYNl2E359sFu09JY5CWHzzz0/0wEa5kH110KYBOANdOnZmWnwlDCMS
	 QK56zxBJhGFJB6LRV8kC8Jozmyub5KbsQde9dtgfMl+lCvJfjF02n8teH2J4SSevP+
	 AaTZ7DSMXdD6LI1DSoYvlWb3rA1TVsL0OahH4EQHsJohJZHLWXjztk/+7mxPsIZ2Ur
	 8Dnx2EnNmZZ68FzdQsWGPKSOGQem/c5bdXmCdS/qNV4Ym0gf8m81006FiLdQa+5AP5
	 RrHBwieFr0NRiVc/O/borTX7nVk4rJs0jVOy9ionuks7IXTkzWekctVGfDW/3MHv5x
	 kDg18AqGTiJPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50109C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166570805332.24062.5899217729142281704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62427219aa672f5bbc5a61483a0ac597cf0ab89d01121d88d592a0d3924c4bc
Date: Fri, 14 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665708053
