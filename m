Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9166B17C3
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67833C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664806853;
	bh=DOiC7Ny6O8MiaHR1SXFOTuogkglD2l3p6EioBzEnhXQ=;
	h=To:Subject:From:Date:From;
	b=bo7viYmsnHW5Eippc9MkPI6NiUYwRkWEjFQaC3O7EiIpRQElnKqIW12+JYCpG94oH
	 Zi8yVI9oMpljfL1JngULO71dFRnpDXn84L6cCYUb/iNjqkI6CCTq8v/m+TRPlVASE2
	 D10llsGO84vV+j1dtSk4uYNAgfBnaHnGiUlMKBdgbhs0S0q0ksJQ49q9Qe3dEiPqYf
	 NIIsCxgimCeCd95irLJ+u1lAH1zA4J3SzXUR4oH3384+n4cK/cAYcC0qBqfbxM2xIM
	 VPuP3rNa2xC0mnzmbn+gMJeXl3EOHJQ+oRYAIjd+xsQE/kbhDXUIQA/O+vOLpUhfEA
	 red6kdiE6OTzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A10C433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166480685332.13109.16170651327419407978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b944772c488edab1de4a7063159f4d0c28e9a03e399d052b9badc2e03ac9c56
Date: Mon, 03 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664806853
