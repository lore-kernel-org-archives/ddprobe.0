Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4022310E5
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AEBC433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679359625;
	bh=X5ghByDc0MqscboZIOcgmLxm6+qvuqgYjIGgOfdCezw=;
	h=To:Subject:From:Date:From;
	b=SupnRKzRnEa1ORhNN4QuLEaMXzo9yMd/LAQ/Lvy+3Kb5D4euZgMeJPH14dy6sLj9a
	 9fEaHtMTpf+hrZThwLFRp87TRYINMDNzQn69ux4RodP4ZVfZ1vH9CBs6PFv4c1o9Dn
	 MxUFMYDOIEFvb1PM6aI6Uty0t5cUq0Hpl+P2BJ4ED6U5XJNXu7niJcYt3LxZUbowUW
	 c2nDsFh2tiixicwajdwQiESGOnVygyrtURywgPy/OKQuB18z7RKaIfn+RAdOh7XCJJ
	 U/adXsCFMeMcTQqGXzQIJ6oYcjyvlxS0O2xs4Sh7uNCV82Yg3LwBfO45yNWWKZWShG
	 kTyyBq4L/3GPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8460C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167935962574.15026.10007087347905816308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af364aa4d11e5474f2c6d2bf265c83b2488c8421776fc7965ad635cdfe8ae1a
Date: Tue, 21 Mar 2023 00:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679359625
