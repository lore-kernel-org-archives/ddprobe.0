Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E1DE541
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 13:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pI3qnX22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CAFC433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 13:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697462228;
	bh=u3GnqyTYDrMkrW7NPLpuyXeAz2OIn3beQ+KtuUZveT0=;
	h=To:Subject:From:Date:From;
	b=pI3qnX22OhyIKhArymlMGwIvvpLj+J71nlVGwGgrm61HOQrrYBWsObs7VUqYE5kUm
	 54+8ZFTDLBoq4V16YTPo+I4O2aoh3r9khZBj9SMOVUzsfku8UE6NN2i0BSkNwM0QTG
	 ouP3ofkE+2eZ4pJ2dzyRw+pjBHOvFkMs0aj9P84N+YyRY8FPY268K+vd00WJHuG0Mi
	 AK8ILVy0yNZeqxwA76dTQO+CdyU9nfsEZU4QaRHXG/FT2ybs3N/wKGx0JxFdfLAKea
	 oNLo7Jy0DI8sNl1/WIDwBB2hKK4239zemuD2CvRCAYvvso9cKxQ9Wdhceb0Z3tBDUB
	 CFmsdcAcbiIlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83DECDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 13:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169746222868.21914.10911042286642805533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86335607439d5bac0c0d15f919e0214531d784b6bae3a0d5e30092896dea694
Date: Mon, 16 Oct 2023 13:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697462228
