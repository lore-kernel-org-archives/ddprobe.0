Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F88F6AA0
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 13:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAABDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 13:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676639645;
	bh=C+qzwwb8s7NqLm9Nk/k9REbQHXOcC2HSYbPZr6FYEXU=;
	h=To:Subject:From:Date:From;
	b=jbvyW994SZO90D60ZB9mCQYjpBCNFcuL/XdweyjF14hj7HaoAdOIiRQ6QSkZEDR2S
	 A0foVd8XtcoMS6XgK1w/dlADHWoCLqRphwCcA+u64kCM/QND/JYsCPnUyjkPSrKB2x
	 NwcxU7i7A5gyyCMLfyB6XcRymiMGFhpvjyJI34p9ksUSPWTO8S42IU+DNuFIaCChC0
	 XulOynOWuxcIQinpEI39uMM1QZg6sd6+0/Kyat2t3iHdetjj4CfipeLeide5bb7tJj
	 eVcAJbXqiuOSsfox0IEWtz+U0wYciEORXEQbEG60xfjsQQHNcoS+9hNPy9Rw+6g+vb
	 IwULnbemc3JJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47F4C636D4
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 13:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167663964579.21182.11748033130156300920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59fdd433dddc2ef84f5efda51a3117d4c27cb6e772eba22bb888aad076d4c812
Date: Fri, 17 Feb 2023 13:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676639645
