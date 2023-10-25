Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B1C31A72
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9fpUTT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87098C433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698262696;
	bh=/hKUv0MZDaGmPdGrGdmBAC0dUmI2gl5PDCg4pZ6zAng=;
	h=To:Subject:From:Date:From;
	b=f9fpUTT3M7P1UoYWiZXjDHwvvh9FEzoN7IkGvsgyNZcyecbJQ0iCmDXYI1MuoXUyo
	 H5o8tgRz6a8wpZ/j1tN8GhYq7P00vDD2UrYUgGmfubQeFp3+BwBbxzdYuhAJIvLDaq
	 sT6x7t1V9zHyr+T+UyDS8cLxsgktNkT8uLYJvZCUG+ycrmvexV9toDMm2DcSNbkRnv
	 UE/wIZRvd4/Z7tmAWlvDwTJNStQ3gMKLFxY2nQ8dEQenmVDecAc0/PGYVbcXNAWEx4
	 3QboWMy/2LmxGic7euQCfycNDXXaCHt5h5BUSAluQ8iMyWxJgHQAgvBnbvD9qEIJdE
	 DzGJONJ71nj4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626E4C0032E
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169826269639.6953.15231860235482410995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d33be8ae5948f2ffc94c15e86388253a275a948a700aa5d34f1f3f0214cbbc5
Date: Wed, 25 Oct 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698262696
