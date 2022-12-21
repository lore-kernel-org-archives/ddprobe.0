Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB5E185D
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8301DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671588687;
	bh=j9vez/FHIfd75c/xzP/49jDjoQ5lDBVo6aqEqwTBvec=;
	h=To:Subject:From:Date:From;
	b=bv0KMw+XWsBkHaB5djnVg+2fld4hy8EhOiEzcA7/Jx8Odhn0XjhFnI+nXMYSI/RY1
	 CrZ537NH6RRWJuZxJ77ixjoZ7LcVLVRZYcVxXK7BftptmS2LSCqLh1KCa1r7GH568c
	 VRkUcukmJwZyefCPYCEzk+8WQ0Zrr0lmQsjT6p/Z2Qtb8moAV6IHA3PYC/zZ659QEn
	 RrkzdfWSbC/Qd/GJKG41e48RZ9oJujwzyJ2NzHYyuQ3fzvqzo9CPTam4wGoYcxY1a1
	 MrlbRNhbXyPaGbCFPpjDD3eqILAbXaKZ0tzCRzpcj1TAzccFl6tyPeFHdAlAE2MRn9
	 vpwun00eBa/Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66964C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167158868740.13057.16197373059141698444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e499ca34b67eeeeba73e5993f665358ede7a01807bfcad234f5626fb2afd56
Date: Wed, 21 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671588687
