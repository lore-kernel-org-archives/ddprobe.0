Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C3D7FD
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C93C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672899687;
	bh=8KrTNdPxKZ8EmfH0Mx0UAp046IU2J5AjkUjg3L5lli8=;
	h=To:Subject:From:Date:From;
	b=frrCLBd/aO37dTrmfE3pbpXQ1J9N9rP/sChaU/87irrV2fuE8imsMMWGCqqU3YZ/9
	 H5eH2nOESNZI3NDZVZ76qRLm0nZGmkkgaaiuw8RI7ROmvvdYKr7kYu+RDS3iryw5EJ
	 9RKw/yQV0zPGFYksyVwxhA83EQUfv2KvRaQvG0omWTyKmcK5QNztW2x6BYMcq7djmq
	 lu82FlslM00p3N6GDtNFBZNmrdwxS9rc+e/uRAxAMfS2VP7iBVOvdV6FcmZbK/BE9K
	 2wXRCwx8Tu1xrci3GN+DVcyaaFVCkJEJPpUmSwoYh0UL94k6hZsP27UvwW+7JxCAkM
	 LYfDx6D6YP39Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 634D4C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167289968739.28040.10388014489710846090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3f1fe23e8c7c553cac8ef5cdf5016128057347273a779ceacf881b895f8198
Date: Thu, 05 Jan 2023 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672899687
