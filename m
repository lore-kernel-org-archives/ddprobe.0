Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BD46712
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76877C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663350653;
	bh=MVlZam7DoYCKZleunQdc/2yAlCxXp8zWXCCL+k0QsuE=;
	h=To:Subject:From:Date:From;
	b=ekur/h8WSbs2QXrQU+Y6tEPOd2aFgwgTGXr225VRhOJdM/Vda+AzdREcyB0yiDGEt
	 HUii6NLkEje/7hcqPV53r4/4veYJtDRgnWug4wFSYGrky8FFGDTGAe82Ti+Y0VJWai
	 qmlA0DIA9YK4+TW/JvhdlRktx0lfvY+gVxpeD+2gGZHM+JFNBVbo7lPt2oqHElPCvZ
	 cXRSQCXhhFA44Wbbj2dxoy67MV/JFgHF+5YVw+lSwRphQD3ImNkfYW6EyNYJfdzB4C
	 yXK0a+NCAyeaGbCAAcflvl17lvEZ7d/MfHfYbnMytr0tINzNHmdZM18SnWe0pjG8VC
	 zzLKVmQqI/qnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 585E4ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166335065335.17595.12964182687831684644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e33023d931a02f5c02ee37119bf3d5ec29a5f1ac63dd47af47161a28d0c9116
Date: Fri, 16 Sep 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663350653
