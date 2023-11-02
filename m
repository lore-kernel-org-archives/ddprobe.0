Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEC9187A
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuQJNmj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E42EC433C7
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698904696;
	bh=d6Dz8GWVbypzxXq7EvdFY4jNqYgE0EJna1q/19c0P3w=;
	h=To:Subject:From:Date:From;
	b=FuQJNmj+5gCI0uNCU18QmFmJ61PDvt1tWKJkR44l7hrwXTjHB3KGE8urid2Fw7+fl
	 CfkWlbCQXEtIoqhmR457CDahFsEP+akyuCKvltquHfMlvyI+FMAz9hnRNwKEWidmEZ
	 P4jjsQ2I19BjGue/CF5f8+BmVnGXmO8a8HVZqdLR35c1MetWnyF4ibloxqqaqdRk7u
	 gmoA+tuNt9vpd3Vr0/Lg/pPm4m/hd465iV31LqkJBio/cqPmYF24k2Xh7NbUEAbhtV
	 xaep0UE8e92SxBk0qhu+SS8VLpGW/wiHvvrbBNLfeKua+toAiQR3Ajl04b4SpvHuvz
	 KqoGYe8raIePA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6361FC4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169890469639.30862.691211003839534029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce8c0e149e994f3e8aa6acc77cd02e5e9667fd97b502e63bdc4d6bc6c61ed3f
Date: Thu, 02 Nov 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698904696
