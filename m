Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DB27C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76993C433D7
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668565254;
	bh=CNNPysNpZ2wgFqX/PMQJoTLl+JeNzIy7OeiDT9U5MVk=;
	h=To:Subject:From:Date:From;
	b=QlkGXY52yyl2A/xjQeiWn1CtMN2vxwUH0iE6EyIvUF4OQ5pCNrbCqUM7pSvWieREr
	 CcadPdjZnDhnXE4Jh+LHFecscDVql3j1te7D+WAIDkkpgpJbUgP8qgW5CFo8FwUOcM
	 wPZSABkwoRPwADqamQ0sMsGKFXvsdXFV4WVbvO2zCikDNcmJLomDqx5cejoVGXsS2U
	 VajzGtIXp/exR78eH1OIosYcS5TohwVels3PkeaKPsPeSauA/jhYr+boLd1VhuxeW7
	 /7cv5BhApf5KwQ8TsfsnOM6M7BiZwPW2L0SO58q5IXfpbDlkNt6bktwiIdm2TlPzyE
	 WWI+gly5NLuPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51824C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166856525432.17419.4995265592659896457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9713b876910e91443dac351682c1479bd51d68f16ae9445a1149b4f4f1410801
Date: Wed, 16 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668565254
