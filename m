Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06EA139E
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD18C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669264254;
	bh=ke3PdxKNnnKfBsJd7DjXj0mmk/8rOjuPB02U9Tzbmew=;
	h=To:Subject:From:Date:From;
	b=qPziEGnKimBsPIVZkdOtat2MMml10x0YhS7gMdcGM8d7bspBOSanjkk53Rggnrdyn
	 q6H1OI/Bd7kXSQ2YVi6dYK/smWfSSuzNzF2oDo0V64SG+/TDk+myKQH7WSuCkJqvb+
	 Ee3Q1fGqjdTQ/TR7kz0VLcCsccdVGw/Chg8EywdR74KoTULFMm1qeZw/D5QykxsOoq
	 9maNZdseuJkfAAJ+M0ognscSkJ6rtsDoqSdw5MNBo8bCni8qUpU8kOwIHhNfJS9hQV
	 Uo0p/A0A2VCv+XHhk/HfzGIEp3zJWaRgvGOhuB8G9kXaDD0gGxoYPBcvJ1fm0Jldfa
	 7vOG6JIjGrIug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533EEC4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166926425433.3285.15859646392465697743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01a9acc0b170ceefdb50c4cf7ab1ae4f0d8ba8defdd8e79594151db332ed8dd
Date: Thu, 24 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669264254
